#!/bin/bash

if [ ! -d "/usr/local/munki/conditions/" ]; then
        mkdir /usr/local/munki/conditions
fi

if [ ! -e "/usr/local/munki/conditions/bootstrap.sh" ]; then
        cp /Library/CorpSupport/bootstrap.sh /usr/local/munki/conditions/
fi

rm /Library/LaunchAgents/com.googlecode.munki.bootstrapdone.plist
rm /Library/CorpSupport/bootstrapDone.sh
rm /Library/CorpSupport/bootstrap.sh

# Retouch the bootstrap file
touch /Users/Shared/.com.googlecode.munki.checkandinstallatstartup
