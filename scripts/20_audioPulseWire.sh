#!/bin/bash

#: Include variables.
. variables.sh

echo "Choose an option:"
echo "1. Pulse to Wire: Replace PulseAudio with *PIPEWIRE*"
echo "2. Wire to Pulse: Replace PipeWire with *PULSEAUDIO*"
echo "3. Quit: Exit and do nothing"
echo -n "Choose (1/2/3): "
read choice
case $choice in
	"1")
		sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' $pipewire)
		sudo pacman -Rn --noconfirm $(pacman -Qqe | grep -w "$(sed 's/#.*//g ; /^[[:space:]]*$/d' $pulseaudio)")
		echo "Operation successful: replaced PulseAudio with PipeWire."
		exit -1;;
	"2")
		sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' $pulseaudio)
		sudo pacman -Rn --noconfirm $(pacman -Qqe | grep -w "$(sed 's/#.*//g ; /^[[:space:]]*$/d' $pipewire)")
		echo "Operation successful: replaced PipeWire with PulseAudio."
		exit -1;;
	*)
		echo "No changes made. Quitting..."
		exit -1;;
esac
echo "Cleaning up..."
[ -x /usr/bin/paru ] && paru -c || sudo pacman -Rns --noconfirm $(pacman -Qqdt)
