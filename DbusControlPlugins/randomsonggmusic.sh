#!/bin/bash
if ps aux | grep "[g]musicbrowser" > /dev/null
then
	dbus-send --dest=org.gmusicbrowser /org/gmusicbrowser org.gmusicbrowser.RunCommand string:ToggleRandom
	dbus-send --dest=org.gmusicbrowser /org/gmusicbrowser org.gmusicbrowser.RunCommand string:NextSong
	dbus-send --dest=org.gmusicbrowser /org/gmusicbrowser org.gmusicbrowser.RunCommand string:ToggleRandom
else
	:
fi
