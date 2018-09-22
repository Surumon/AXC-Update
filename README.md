# New Info
A newer easy to install EQemu Repack is available. Find more info here: https://github.com/Akkadius/EQEmuInstall/wiki/EQEmu-Readme
=====

#BIG GIANT IMPORTANT NOTE:
AX Classic is no longer supporting the repack.  To this end, I am going to support their decision to not update the repack any longer as well.  I may do another project related to EQemu.  If/when this project occurs - it will be annotated here.  All progress on AXC-Repack Update is currently suspended.
=====

# AX-Classic Repack Update

These are the current updates for the MySQL and quest scripts for the AX-Classic Repack that I am currently working on.  My goal is to get most of the bugs in the repack crushed and fix a few features for a more complete repack experience.  Later I will offer various configurations and tools to further customize the experience you are seeking for you and your friends.

I will be hosting update patches in the form of 7-ZIP files.  You can download the patches, or individual scripts as I update them.  Please remember, you must replace your quest directory with the patch, "\AXClassic-PEQ\axclassic\quests"

=====

# Last Build Update : July 30, 2015

=====

# Project Goals

The goal of this project is to make hosting and playing your own EQemu Server as easy and accessible to all players.

To further facilitate this idea, customizations to setup, scripts, and even custom content will eventually be available to all users.  There will not be an "official" server or "required" server that you must play on.  All this content will always now, and forever, be free for you.

#Note
This project will never attempt to be the current live state of the AX-Classic Rathe server.  It is only my goal to provide an easily accessible server, not duplicate the current build of AX-Classic.

=====

#Credits

Primary AX-Classic, the Rathe Server, is updated and maintained by a great community of players.  I highly suggest you visit them and get to know them.

The repack was made by a fine gentleman by the name of leslamarch for his father.  All credit goes to him for the repack launcher. 

If you like the repack and would like to see the current live version of the server, please visit http://www.axclassic.com/

======

#Installation Requirements

<h2>Server Host & Play:</h2>
- EQ Titanium Install
- AX-Classic Repack
- AX-Classic Repack Files
- AX-Classic Required Client Files
- AX-Classic Launcher (for ease of use)
- Updated Patch files for MySQL and Quests
- At least 5 GB free of hard drive space
- Ability to run EverQuest: Titanium Edition

<h2>Server Host Only:</h2>
- AX-Classic Repack
- AX-Classic Repack Files
- Updated Patch files for MySQL and Quests
- At least 3 GB free of hard drive space

<h2>Client Only:</h2>
- EQ Titanium Install
- AX-Classic Required Client Files
- AX-Classic Launcher (for ease of use)
- Enough hard drive space to install EQ Titanium

NOTE: The server will work over a local area network just fine.  The server also works over Hamachi, I would assume it also works over other VPN software.  However, I haven't tested it with all software.  Use at your own risk!

======

# Downloads

AX-Classic Repack & Required Files : https://www.dropbox.com/sh/92pruwf30u4h08o/AACrjf1pQHIuL2Xthr1oOxJTa?dl=0

Server hosts - You need the map files!  This is non-negotiable, failure to install the server correctly will result in players who cannot interact with the world.

======

#Installation Instructions

<h2>Client Only:</h2>
1. Install EQ Titanium.
2. If you want to support more than one install of EverQuest Emu - Copy the Titanium Directory to a new destination.  Rename this directory to something easy to remember, like AXCemu.
3. Download the following files from DropBox (link above) : AxLauncher.7z [required], classice.zip [required], and client_mapsc.zip [optional]
4. Unzip classice.zip into the AXCemu directory.
5. Unzip AxLauncher.7z into the AXCemu diretory.
6. Modify your eqhost.txt file to read the IP of the server you are connecting to (example : "Host=127.0.0.1:5999:5999" )
7. Modify your settings.ini file to read the IP of the server you are connecting to (example : "miniLoginIPPort = 127.0.0.1:5999:5999" )
8. Rename lavastorm.eqg and nektulos.eqg to lavastorm.eqg.bak and nektulos.eqg.bak (We use old zones, if you don't rename these, you cannot zone into Lava Storm or Nektulos Forest properly).
9. Install optional updated client map files.  The client_mapsc.zip is extracted to the maps directory.  You only need this file if you want newer/updated maps than the base EQ Titanium maps.  If you wish to explore at your own pace, do not install this file.
10. Create a short cut for AxLauncher.exe and send it to your desktop to make it easier to access.
11. Run the launcher and create an account.
12. Log in and play AX-Classic Repack.

NOTE: Client computers do not require any additional server files.

<h2>Server Only:</h2>
TBA

<h2>Server and Client:</h2>
Follow both installation instructions to both host and play.

======

#Video Tutorials

Installing AX-Classic Repack Tutorial Video : TBA

Configuring AX-Classic Repack Tutorial Video : TBA

Updating Scripts/Database Tutorial Video : TBA

Changing the PHP Login Password Tutorial Video : TBA

Modifying Things via the PHP Editor Tutorial Video : TBA

Creating Your Own Quests Tutorial Video : TBA

General Tutorial and Starting Tips : TBA

======

#Reporting Bugs

If you find any issue with a quest, NPC, or database error (wrong crafting recipe, bad spells, empty vendor, et cetera) please consider posting in the issues on Github.  Alternatively, you can send an e-mail to the address below.

Bug Report E-Mail : TBA
