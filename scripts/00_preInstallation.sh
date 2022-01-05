#!/bin/bash

#: Include variables.
. variables.sh

#: Include functions.
. functions.sh

#: Remove unwanted packages from "rmPackages.x86_64" list.
sudo pacman -Rn --noconfirm $(pacman -Qqe | grep -w "$(parse_package_list $remove)")

#: Re-install keyrings incase any of them got corrupted.
sudo pacman -S --noconfirm $(pacman -Qqs keyring) && sudo pacman -Syyu --noconfirm
