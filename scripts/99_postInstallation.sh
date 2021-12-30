#!/bin/bash

#: Set zsh as default shell (for $USER && root).
chsh -s $(which zsh) && sudo chsh -s $(which zsh) && echo "#New zshrc file" > $HOME/.zshrc && zsh

#: Enable essential services.
sudo systemctl enable NetworkManager bluetooth.service sddm.service

#: Clean up files and dirs that are not needed.
rm -rf $HOME/.screenrc $HOME/.viminfo $HOME/.lesshst $HOME/.bash* $HOME/.config/autostart/arcolinux* $HOME/.config/alacritty $HOME/.config/arcolinux-welcome-app $HOME/.config/neofetch

#: Remove orphan packages.
#sudo pacman -Rn --noconfirm $(pacman -Qqdt)	# Remove true orphans.
paru -c --noconfirm				# Remove unused packages.

#: Clean pkg cache.
#sudo pacman -Sc --noconfirm			# Remove unused.
#sudo pacman -Scc --noconfirm			# Remove all.
paru -Sc --noconfirm				# For repo + aur.

#: Remove cache.
rm -rf ~/.cache					# Remove .cache folder and sub dirs from home.
#find ~/.cache -user $USER -exec rm -rf {} \;	# Alternative way. 
