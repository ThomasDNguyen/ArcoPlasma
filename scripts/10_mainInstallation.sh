#!/bin/bash

#: Update system.
sudo pacman -Syyu

#: Install plasma base system.
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' plasmaPackages.x86_64)

#: Install ArcoLinux packages.
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' arcoPackages.x86_64)

#: Install User prefered packages (Repo).
sudo pacman -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' repoPackages.x86_64)

#: Install User prefered packages (AUR).
sudo paru -S --needed --noconfirm $(sed 's/#.*//g ; /^[[:space:]]*$/d' aurPackages.x86_64)
