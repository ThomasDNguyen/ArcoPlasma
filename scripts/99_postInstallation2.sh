#!/bin/bash

#: Clean up files and dirs that are not needed.
rm -rf $HOME/.screenrc $HOME/.viminfo $HOME/.lesshst $HOME/.bash* $HOME/.config/autostart/arcolinux* $HOME/.config/alacritty $HOME/.config/arcolinux-welcome-app $HOME/.config/neofetch

#: Shutdown/Reboot.
#sudo shutdown -h now				# Shutdown.
sudo reboot					# Reboot.
