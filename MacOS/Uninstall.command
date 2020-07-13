#!/bin/sh
. /etc/rc.common

echo "                                                                  "
echo "Please type the password of \"root\" to Uninstall ..."
FROM=`dirname "$0"`

echo "Uninstalling Script and Utility ..."
sudo killall -c Wireless\ Network\ Utility
sleep 2
sudo rm -rf /Library/StartupItems/WirelessNetworkUtility

echo "Uninstalling UI..."
sudo rm -rf /Library/LaunchAgents/Wlan.Software.plist
sudo rm -rf /Applications/Wireless\ Network\ Utility.app

echo "Removing Driver..."
sudo kextunload /System/Library/Extensions/RTL8192SU8.kext
sudo rm -rf /System/Library/Extensions/RTL8192SU8.kext

sudo kextunload /System/Library/Extensions/RTL8192CU8.kext
sudo rm -rf /System/Library/Extensions/RTL8192CU8.kext

sudo kextunload /System/Library/Extensions/RTL8188EU8.kext
sudo rm -rf /System/Library/Extensions/RTL8188EU8.kext

echo "Removing Pkg"

echo "Uninstall Complete."
