#!/bin/bash

#: Include variables.
. variables.sh

#: Include functions.
. functions.sh

#: Install packages for Printing.
sudo pacman -S --needed --noconfirm $(parse_package_list $print)

#: Enable the service(s): Enable CUPS.
sudo systemctl enable --now cups.service cups.socket cups.path

#: Enable the service(s): Make remote CUPS printers available locally.
#sudo systemctl enable --now cups-browsed.service

#: Enable the service(s): LPD protocol printers (Do NOT use!! Legacy shiet).
#sudo systemctl enable --now cups-lpd.socket
