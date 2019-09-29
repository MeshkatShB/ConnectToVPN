#!/bin/bash

# Commands For Setup:

# sudo /sbin/modprobe tun
# sudo apt-get install openconnect

# Connect To VPN:
DESIGNATED_SERVER=$1
server="de.cisadd2.com"

if [[ "$1" = [aA]merica || "$1" = [uU][sS] ]]; then
	server="us4.cisadd2.com"
elif [[ "$1" = [eE]ngland || "$1" = [uU][kK] ]]; then
	server="uk.cisadd2.com"
elif [[ "$1" = [nN]etherland || "$1" = [nN][lL] ]]; then
	server="nl.cisadd2.com"
elif [[ "$1" = [cC]anada || "$1" = [cC][aA] ]]; then
	server="ca.cisadd2.com"
elif [[ "$1" = [fF]rance || "$1" = [fF][rR] ]]; then
	server="fr.cisadd2.com"
elif [[ "$1" = [gG]ermany || "$1" = [dD][eE] ]]; then
	server="de.cisadd2.com"
elif [[ "$1" = [cC]hezch || "$1" = [cC][zZ] ]]; then
	server="cz.cisadd2.com"
fi
echo "You're Connecting to:" $server
inputFiles=`cat ./inputVPN.conf`
sudo openconnect $server $(< $inputFiles)