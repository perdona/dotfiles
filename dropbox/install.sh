#!/bin/bash
 
# This script will download and install Dropbox on a fresh installation of Mac OS X.
# Usage: curl -fkL gist.github.com/raw/963046/install-dropbox.sh | sh

FILE="/Applications/Dropbox.app"
if [ -f $FILE ]; then 
   curl -Lo /tmp/Dropbox.dmg https://www.dropbox.com/download?plat=mac;
   hdiutil attach /tmp/Dropbox.dmg;
   ditto -rsrc /Volumes/Dropbox\ Installer/Dropbox.app /Applications/Dropbox.app;
   hdiutil detach /Volumes/Dropbox\ Installer/;
   rm /tmp/Dropbox.dmg;
fi

exit 0
