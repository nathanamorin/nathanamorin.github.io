---
title: Containarized Linux Apps
tags: [AppImage]
style: fill
color: primary
description: Exploring the various containarized Linux app formats
---

Containarized app formats provide an easy way to install applications along with the neccesary dependencies.  
This makes installing these apps much more reliable & supported on more OS versions.  There are a few
competing options currently available.  This guide does not attempt to pick a "best" option, but describes how
to use / manage apps using these formats.


## [App Image](https://appimage.org/)

App image apps are downloaded & run directly.

[App Image](https://appimage.org/)

*"As a user, I want to download an application from the original author, and run it on my Linux desktop system just like I would do with a Windows or Mac application."*

*"As an application author, I want to provide packages for Linux desktop systems, without the need to get it 'into' a distribution and without having to build for gazillions of different distributions."*

To make App Image usage seamless on the Linux Desktop, it's useful to have a app manager that handles configuring the app image downloaded as a desktop application & organizes the downloaded files to a centeral location.

This is what [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher) does.

See the project [README](https://github.com/TheAssassin/AppImageLauncher#installation) for general installation instructions.

For Manjaro/Arch based distros, it can be installed from the package repo / AUR.

For Ubuntu/derivatives, you can install from the below ppa.

Setup the ppa repo by running:
```bash
sudo add-apt-repository ppa:appimagelauncher-team/stable
```
```
 Latest stable version of AppImageLauncher. For Ubuntu and related distributions.

AppImageLaucher is a helper program that makes it easier to organise and update AppImages on Linux. Learn more at https://github.com/TheAssassin/AppImageLauncher.
 More info: https://launchpad.net/~appimagelauncher-team/+archive/ubuntu/stable
Press [ENTER] to continue or Ctrl-c to cancel adding it.
```
Then, update packages & install:
```bash
sudo apt-get update
sudo apt-get install appimagelauncher
```

Once this is installed, when you first open an AppImage file, it will prompt to integrate with your desktop.

If you wish the application to show up in file open menus, you will need to modify the ```.desktop``` file that is created when the application is registered.

With Gnome, this file is located in ```~/.local/share/applications```.

You will need to find the line starting with ```Exec``` & append the following ```%F```.  This will tell the launcher the application can accept files & will show the application in the file open menu.
