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

#: Enable service(s).
#: VirtualBox service.
sudo systemctl enable --now vboxservice.service
#: VirtualBox web page service.
#sudo systemctl enable --now vboxweb.service
