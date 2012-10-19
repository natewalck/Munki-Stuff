#!/bin/bash

# Read the location of the ManagedInstallDir from ManagedInstall.plist
managedPref=$(defaults read /Library/Managed\ Preferences/ManagedInstalls ManagedInstallDir 2>/dev/null)
if [ ${#managedPref} -gt 0 ]; then
        managedinstalldir="${managedPref}"
else
        managedinstalldir="$(defaults read /Library/Preferences/ManagedInstalls ManagedInstallDir)"
fi

# Make sure we're outputting our information to "ConditionalItems.plist" (plist is left off since defaults requires this)
plist_loc="${managedinstalldir}/ConditionalItems"

defaults write "${plist_loc}" "bootstrapdone" "true"

# Plist cannot be binary
plutil -convert xml1 "$plist_loc".plist
