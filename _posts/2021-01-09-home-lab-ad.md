
# Home Lab Active Directory Configuration

## Centrify Express

Download Centrify Express installer from (https://www.centrify.com/express/linux/download-files/).  This includes installer scripts which can be executed on the machine you wnat to join to your domain.

You will need the AD Domain controller host & Admin credentials for your domain.

Once you have downloaded the appropriate installer for you Linux distribution, extract the .tar.gz file downloaded & run the ```./install-express.sh``` file.

 ```
 sudo ./install-express.sh
 ```
 ```
*****                                                                  *****
*****            WELCOME to the Centrify Express installer!            *****
*****                                                                  *****

Detecting local platform ...

Running ./adcheck-deb9-x86_64 ...
OSCHK    : Verify that this is a supported OS                          : Pass
PATCH    : Linux patch check                                           : Pass
PORTMAP  : Verify that portmap or rpcbind is installed                 : Warning
         : Could not install CentrifyDC-nis package.
         : PORTMAP not installed. Please install required
         : portmap or rpcbind package, which CentrifyDC-nis
         : depends on

PERL     : Verify perl is present and is a good version                : Pass
SAMBA    : Inspecting Samba installation                               : Pass
NSCD     : Check if Name Service Caching Daemon is running             : Warning
         : Name Service Caching Daemon is not running

SPACECHK : Check if there is enough disk space in /var /usr /tmp       : Pass
HOSTNAME : Verify hostname setting                                     : Pass
NSHOSTS  : Check hosts line in /etc/nsswitch.conf                      : Pass
DNSPROBE : Probe DNS server 127.0.0.53                                 : Pass
DNSCHECK : Analyze basic health of DNS servers                         : Warning
         : Only one DNS server was found in /etc/resolv.conf.
         : At least one backup DNS server is recommended for
         : enterprise installations.
         : Only one good DNS server was found
         : You might be able to continue but it is likely that you
         : will have problems.
         : Add more good DNS servers into /etc/resolv.conf.

WHATSSH  : Is this an SSH that Centrify DirectControl Agent works well with: Pass
SSH      : SSHD version and configuration                              : Warning
         : You are running OpenSSH_8.2p1 Ubuntu-4ubuntu0.1, OpenSSL 1.1.1f  31 Mar 2020.
         : 
         : This version of OpenSSH does not seem to be configured for PAM,
         : ChallengeResponse and Kerberos/GSSAPI support.
         : To get Active Directory users to successfully login,
         : you need to configure your OpenSSH with the following options:
         : (display the ones we identified were not set)
         : ChallengeResponseAuthentication yes
         : UsePAM Yes
         : 
         : Centrify provides a version of OpenSSH that's configured properly
         : to allow AD users to login and provides Kerberos GSSAPI support.

4 warnings were encountered during check. We recommend checking these before proceeding

WARNING: Centrify adcheck exited with warning(s).

This installation script provides installation of the following services
in Centrify Infrastructure Services on UNIX and Linux:
 - Centrify Authentication Service
 - Centrify Privilege Elevation Service
 - Centrify Auditing & Monitoring Service

The Centrify Authentication Service and Centrify Privilege Elevation Service
are contained in the CentrifyDC (Centrify DirectControl) packages,
and the Centrify Auditing & Monitoring Service is in the CentrifyDA
(Centrify DirectAudit) packages.

With this script, you can perform the following tasks:
    - Install (update) CentrifyDC & CentrifyDA packages (License required) [E]
    - Install (update) CentrifyDC only packages (License required) [S]
    - Install (update) CentrifyDC Express packages [X]
    - Custom install (update) of individual packages [C]

You can type Q at any prompt to quit the installation and exit
the script without making any changes to your environment.

How do you want to proceed? (E|S|X|C|Q) [X]:  

The Express mode license allows you to install a total of 200 agents.
The Express mode license does not allow the use of licensed features for
advanced authentication, access control, auditing, and centralized
management.  This includes, but is not limited to, features such as
SmartCard authentication, Privilege Elevation, Auditing, Group Policy,
Login User Filtering, and NSS overrides.

Do you want to continue to install in Express mode? (C|Y|Q|N) [Y]:

Do you want to run Centrify adcheck to verify your AD environment? (Q|Y|N) [Y]:

Please enter the Active Directory domain to check [company.com]: example.com
Join an Active Directory domain? (Q|Y|N) [Y]:
    Enter the Active Directory domain to join [example.com]: 
    Enter the Active Directory authorized user [administrator]: AdminUser
    Enter the password for the Active Directory user: 
    Enter the computer name [remotedesktop]: 
    Enter the container DN [Computers]: 
    Enter the name of the domain controller [auto detect]: 
Reboot the computer after installation? (Q|Y|N) [Y]:

You entered the following:
    Install CentrifyDC 5.7.1 package: Y
    Install CentrifyDC-openssl 5.7.1 package: Y
    Install CentrifyDC-openldap 5.7.1 package: Y
    Install CentrifyDC-curl 5.7.1 package: Y
    Install CentrifyDC-ldapproxy 5.7.1 package: N
    Install CentrifyDC-nis 5.7.1 package: N
    Install CentrifyDC-cifsidmap 5.7.1 package: N
    Install CentrifyDC-openssh 5.7.1 package: N
    Install CentrifyDA 3.7.1 package: N
    Run Centrify adcheck             : Y
    Join an Active Directory domain  : Y
    Active Directory domain to join  : example.com
    Active Directory authorized user : Administrator
    computer name                    : remotedesktop
    container DN                     : Computers
    domain controller name           : auto detect
    Reboot computer                  : Y

...
...
...
You have successfully joined the Active Directory domain: example.com
in the Centrify DirectControl zone: Auto Zone 


You may need to restart other services that rely upon PAM and NSS or simply
reboot the computer for proper operation.  Failure to do so may result in
login problems for AD users.
 ```
