#!/bin/bash

#: Include variables.
. variables.sh

#: Include functions.
. functions.sh

#: Install packages for VirtualBox.
sudo pacman -S --needed --noconfirm $(parse_package_list $vbox)

#: Add current user to xboxusers group.
sudo gpasswd -a $USER vboxusers

#: Load VirtualBox kernel module.
sudo modprobe vboxdrv

#: Enable vboxweb service.
sudo systemctl enable --now vboxweb.service
