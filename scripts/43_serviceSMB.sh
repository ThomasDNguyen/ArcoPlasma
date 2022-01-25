#!/bin/bash

#: Include variables.
. variables.sh

#: Include functions.
. functions.sh

#: Install packages for SMB file sharing.
sudo pacman -S --needed --noconfirm $(parse_package_list $smb)

#: Use default config file.
sudo cp /etc/samba/smb.conf.default /etc/samba/smb.conf

#: Enable the service(s): Enable SMB.
sudo systemctl enable --now smb.service nmb.service

#: Firewall configs: Tell firewall to allow Samba usage.
#: For UFW:
sudo ufw allow CIFS
sudo ufw app update Samba
sudo ufw allow Samba
#: For firewalld:
#firewall-cmd --permanent --add-service={samba,samba-client,samba-dc} --zone=home

#: Note: other configurations are rather "user && usecase && system"-specific so it's better if you set them up manually.
#: More info can be found here: https://wiki.archlinux.org/title/Samba
