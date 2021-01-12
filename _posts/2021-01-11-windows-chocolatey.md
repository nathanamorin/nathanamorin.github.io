---
title: Windows Chocolatey
tags: [Windows, PackageManager, Chocolatey]
style: fill
color: primary
description: Chocolatey for Windows (The missing Windows package manager)
---


[Choocolatey](https://chocolatey.org/) is the most used [package manager](https://en.wikipedia.org/wiki/Package_manager) for Windows.  It allows easy installation & updating of Windows software.



## Install

Run Windows Powershell as Administrator (right click Run as Administrator).

Run

```
Get-ExecutionPolicy
```

If this command outputs ```Restricted```, run 

```
Set-ExecutionPolicy AllSigned
```
```
Execution Policy Change
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose
you to the security risks described in the about_Execution_Policies help topic at
https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to change the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): Y
```

Run the below command to install Chocolatey
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

## Usage

Install packages by running ```choco install <package>```

Update all packages by running ```choco update all``` or update a single package by running ```choco update <package>```

Search for packages by running ```choco search <search>```


