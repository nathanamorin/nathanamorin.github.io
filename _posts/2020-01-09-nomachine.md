---
title: Linux Remote Desktop with NoMachine NX
tags: [Linux, RemoteDesktop]
style: fill
color: primary
description: Configuring Ubuntu Linux Remote Desktop with NoMachine NX
---

This guide walks through setting up a performant Linux remote desktop solution using [NoMachine](https://www.nomachine.com/) on Ubuntu Linux.

## Installation

NoMachine is not available as a ppa on Ubuntu.  If you are using an Arch based distro, you can install NoMachine through the AUR repository.

The main way to install NoMachine is downloading the package from their website [https://www.nomachine.com/download/linux](https://www.nomachine.com/download/linux).

You will likely want the 64bit installer (NoMachine for Linux -x86_64, amd64) & they have rpm, deb, and bin packages.  For Ubuntu, we will use the deb version.

Once downloaded, you will have a file similar to ```nomachine_xxxxx_amd64.deb```.
This can be installed by running:
```
sudo dpkg -I <file name>.deb
```
```
Selecting previously unselected package nomachine.
(Reading database ... 185622 files and directories currently installed.)
Preparing to unpack nomachine_7.0.211_4_amd64.deb ...
Unpacking nomachine (7.0.211-4) ...
Setting up nomachine (7.0.211-4) ...
NX> 700 Starting install at: Sat Jan 09 11:45:16 2021.
NX> 700 Installing: nxclient version: 7.0.211.
NX> 700 Using installation profile: Ubuntu.
NX> 700 Install log is: /usr/NX/var/log/nxinstall.log.
NX> 700 Compiling the USB module.
NX> 700 Installing: nxplayer version: 7.0.211.
NX> 700 Using installation profile: Ubuntu.
NX> 700 Install log is: /usr/NX/var/log/nxinstall.log.
NX> 700 To connect the remote printer to the local desktop,
NX> 700 the user account must be a member of the CUPS System Group: lpadmin.
NX> 700 Installing: nxnode version: 7.0.211.
NX> 700 Using installation profile: Ubuntu.
NX> 700 Install log is: /usr/NX/var/log/nxinstall.log.
NX> 700 Creating configuration in: /usr/NX/etc/node.cfg.
NX> 700 Installing: nxserver version: 7.0.211.
NX> 700 Using installation profile: Ubuntu.
NX> 700 Install log is: /usr/NX/var/log/nxinstall.log.
NX> 700 Creating configuration in: /usr/NX/etc/server.cfg.
NX> 700 Install completed at: Sat Jan 09 11:45:32 2021.
NX> 700 NoMachine was configured to run the following services:
NX> 700 NX service on port: 4000
```

