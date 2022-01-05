#!/bin/bash

#: Include variables.
. variables.sh

#: Update system.
sudo pacman -Syyu --noconfirm

#: Install plasma base system.
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d ; s/^[[:space:]]*// ; s/[[:space:]]*$//' $plasma)

#: Install ArcoLinux packages.
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d ; s/^[[:space:]]*// ; s/[[:space:]]*$//' $arco)

#: Install User prefered packages (Repo).
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d ; s/^[[:space:]]*// ; s/[[:space:]]*$//' $repo)

#: Install User prefered packages (AUR).
paru -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d ; s/^[[:space:]]*// ; s/[[:space:]]*$//' $aur)
