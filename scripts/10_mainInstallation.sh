#!/bin/bash

#: Include variables.
. variables.sh

#: Update system.
sudo pacman -Syyu

#: Install plasma base system.
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' $plasma)

#: Install ArcoLinux packages.
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' $arco)

#: Install User prefered packages (Repo).
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' $repo)

#: Install User prefered packages (AUR).
sudo paru -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' $aur)
