#!/bin/bash

#: Include variables.
. variables.sh

#: Include functions.
. functions.sh

#: Update system.
sudo pacman -Syyu --noconfirm

#: Install plasma base system.
sudo pacman -S --needed --noconfirm $(parse_package_list $plasma)

#: Install ArcoLinux packages.
sudo pacman -S --needed --noconfirm $(parse_package_list $arco)

#: Install User prefered packages (Repo).
sudo pacman -S --needed --noconfirm $(parse_package_list $repo)

#: Install User prefered packages (AUR).
paru -S --needed --noconfirm $(parse_package_list $aur)
