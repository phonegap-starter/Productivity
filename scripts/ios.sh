#device.sh
project=$1;
username=$2;
password=$3;
projectPath=$4;
pathToDeviceInstaller=$5;

APIPATH="https://build.phonegap.com/api/v1/apps";
FILEPATH="https://build.phonegap.com/apps/";

APIcall="$APIPATH/$project"
creds="$username:$password";

cd $projectPath

##Request Phonegap data
echo "Requesting Project Data.";
package=$(curl -s -u $creds  $APIcall | grep -Po '"package":.*?[^\\],');
title=$(curl -s -u $creds  $APIcall | grep -Po '"title":.*?[^\\],');
title=${title##*:};
title=$(echo $title|sed 's/,//g');
title=$(echo $title|sed 's/"//g');
title=$(echo $title|sed 's/ //g');
package=${package##*:};
package=$(echo $package|sed 's/,//g');
package=$(echo $package|sed 's/"//g');
echo "Done. ";

echo "Waiting for rebuild to be done.";
donecheck=$(curl -s -u $creds  $APIcall | grep -Po '"ios":"complete"');	
while [$donecheck -eq ""]
do
	echo ".";
	sleep 10;
	donecheck=$(curl -s -u $creds  $APIcall | grep -Po '"ios":"complete"');	
	
done
echo "Done. Now downloading.";

##Download File
download=$(curl -L -s -u $creds -o $title.ipa $APIPATH/$project/ios);

echo "Done. Now installing.";
##Install on Device
$pathToDeviceInstaller $projectPath$title-debug.ipa
echo "Done.";