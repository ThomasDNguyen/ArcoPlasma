#!/bin/bash

#: Include functions.
. functions.sh

#: Set zsh as default shell (for $USER && root).
chsh -s $(which zsh) && sudo chsh -s $(which zsh)

#: Init zsh.
echo "#New zshrc file" > $HOME/.zshrc

#: Enable essential services.
sudo systemctl enable NetworkManager bluetooth.service sddm.service fstrim.timer

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

#: Exit (bash) session to generate history file to remove it in the last postInstallation script.
echo "Login again and run the last postInstallation script."
echo "Exiting in:"
countdown 5
kill -9 $PPID
