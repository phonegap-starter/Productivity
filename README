# PhoneGap Build Starter - Productivity

This project introduces some automation for using PhoneGap Build.  It includes the ability to:
* Package Applications for PhoneGap Build
* Upload Applications to PhoneGap Build
* Listen for notification from PhoneGap Build 
* Download and install application on Android Devices.
* Download and install application on IOS Devices.

## Prerequsites 
This project currently only works for developement on OS X

Your application will have to be setup to be created from zip instead of a github repository.

An optional part of the ANT build process relies on Transporter Chief, which is available here:
http://gamua.com/blog/2012/03/how-to-deploy-ios-apps-to-the-iphone-via-the-command-line/

Basically in development with the ANT script and Transporter Chief you have the option of pushing
new content to PGB, waiting for it to build, downloading new app, and installing it on an attached 
iOS device. 

An optional part of the ANT build process relies on the Android SDK, which is available here:
http://developer.android.com/sdk/index.html

Basically in development with the ANT script and the SDK tool ADB you have the option of pushing
new content to PGB, waiting for it to build, downloading new app, and installing it on an attached 
Android device. 

## Getting Started
However you want to (cloning project, copying and pasting files, rewriting by hand) get the following files in your project:
* build.xml
* scripts/android.sh (Make sure to chmod to executable)
* scripts/ios.sh (Make sure to chmod to executable)

Then create a build.properties file based on example.properties

## Commands

The following ANT commands are especially of interest to you:

<table>
	<tr>
        <td>build</td>
        <td>Creates a packaged zip file that will work with PhoneGap Build, but not contain uncesscary files</td>
    </tr>
    <tr>
        <td>deployToPGB</td>
        <td>Runs build, then uploads the package to PhoneGap Build, triggering a PGB rebuiild.</td>
    </tr>
    <tr>
        <td>deployToAndroid</td>
        <td>Runs build, then deployToPGB, then listens for PGB rebuild to be done. 
        	Then it downloads the app file, installs it on an attached Android device, and notifies you that it is done. 
        </td>
    </tr>
    <tr>
        <td>deployToiOS</td>
        <td>Runs build, then deployToPGB, then listens for PGB rebuild to be done. 
        	Then it downloads the app file, installs it on an attached iOS device, and notifies you that it is done. 
        </td>
    </tr>
    <tr>
        <td>deployToDevices</td>
        <td>Runs build, then deployToPGB, then deployToiOS, and then deployToAndroid.
        </td>
    </tr>
</table>


