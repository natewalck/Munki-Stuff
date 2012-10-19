include /usr/local/share/luggage/luggage.make

TITLE=BootstrapDone
REVERSE_DOMAIN=com.company
PACKAGE_VERSION=1.0.0
PAYLOAD=\
	pack-BootstrapDoneScripts\
	pack-bootstrapdone-LaunchAgent\

pack-BootstrapDoneScripts: l_Library_CorpSupport
	@sudo ${CP} ./bootstrap.sh ${WORK_D}/Library/CorpSupport/
	@sudo ${CP} ./bootstrapDone.sh ${WORK_D}/Library/CorpSupport/

pack-bootstrapdone-LaunchAgent: l_Library_LaunchAgents
	@sudo ${CP} ./com.googlecode.munki.bootstrapdone.plist ${WORK_D}/Library/LaunchAgents/
