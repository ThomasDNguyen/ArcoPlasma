#!/bin/bash

#: Include variables.
. variables.sh

#: Include functions.
. functions.sh

echo "Choose an option:"
echo "1. Pulse to Wire: Replace PulseAudio with *PIPEWIRE*"
echo "2. Wire to Pulse: Replace PipeWire with *PULSEAUDIO*"
echo "3. Quit: Exit and do nothing"
echo -n "Choose (1/2/3): "
read choice
case $choice in
	"1")
		yes | sudo pacman -S --needed $(parse_package_list $pipewire)
		sudo pacman -Rn --noconfirm $(pacman -Qqe | grep -w "$(parse_package_list $pulseaudio)")
		echo "Operation successful: replaced PulseAudio with PipeWire."
		;;
	"2")
		yes | sudo pacman -S --needed $(parse_package_list $pulseaudio)
		sudo pacman -Rn --noconfirm $(pacman -Qqe | grep -w "$(parse_package_list $pipewire)")
		echo "Operation successful: replaced PipeWire with PulseAudio."
		;;
	*)
		echo "No changes made. Quitting..."
		exit -1;;
esac

echo "Cleaning up..."
[ -x /usr/bin/paru ] && paru -c || sudo pacman -Rns $(pacman -Qqdt)
echo "FINISHED! **Reboot is recommended**"
echo 'You can later check if the service is running properly with: "pactl info"'
