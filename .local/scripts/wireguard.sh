#!/bin/sh

connection_status() {
	connection=$(nmcli connection show --active | grep "VPN")

	n="$(expr length "$connection")"


	if [ "$n" = "0" ]; then
		echo "1"
	else
		echo "2"
	fi
}

case "$1" in
	--toggle)
		if [ "$(connection_status)" = "2" ]; then
			nmcli connection down "VPN" > /dev/null
		else
			nmcli connection up "VPN" > /dev/null
		fi
		;;
	*)
		if [ "$(connection_status)" = "2" ]; then
			echo -n 聯
		else
			echo -n 輦
		fi
		;;
esac
