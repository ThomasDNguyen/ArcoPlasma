#!/bin/bash

#: Clean up files and dirs that are not needed.
rm -rf $HOME/.screenrc $HOME/.viminfo $HOME/.lesshst $HOME/.bash* $HOME/.config/autostart/arcolinux* $HOME/.config/alacritty $HOME/.config/arcolinux-welcome-app $HOME/.config/neofetch

#: Shutdown/Reboot.
echo "ArcoPlasma installation is complete. Would you like to:"
echo "1. Reboot?"
echo "2. Shutdown?"
echo "3. Or, do nothing."
echo -n "Choose (1/2/3): "
read choice
case $choice in
	"1")
		echo "Rebooting in..."
		countdown 3
		sudo reboot
		;;
	"2")
		echo "Shutting down in..."
		countdown 3
		sudo shutdown -h now
		;;
	*)
		exit -1;;
esac
