### DISCLAIMER: This is only a temp script, the project is still a work in progress ###

# #PROJECT: Custom OS

>Arch + Arco repos + KDE (+ Tiling WM).

## I/ Arch base:  
***Use custom built iso with [drivers installed](https://wiki.archlinux.org/title/NVIDIA_Optimus#SDDM)***  
***Add Arco Linux repositories***  

## II/ ArcoPlasma:  
### 1.  Packages and meta packages:  
#### 1.1. Meta packages:  
- [plasma-desktop](https://archlinux.org/packages/extra/x86_64/plasma-desktop/):  
    - accountsservice.  
    - baloo.  
    - gawk.  
    - kdelibs4support.  
    - kmenuedit.  
    - polkit-kde-agent.  
    - systemsettings.  
    - xdg-user-dirs.  
- [kde-system-meta](https://archlinux.org/packages/extra/any/kde-system-meta/):  
    - dolphin: file manager.  
    - kcron: KDE's cron.  
    - khelpcenter: Documents for KDE specific stuffs.  
    - ksystemlog: GUI system log manager.  
    - partitionmanager: Partition manager (Qt equivalent of Gparted).  
- [plasma-wayland-session](https://archlinux.org/packages/extra/x86_64/plasma-wayland-session/) (Optional | Not Recommended):  
    - kwayland-integration.  
        - kguiaddons.  
        - kidletime.  
        - kwayland.  
        - kwindowsystem.  
    - plasma-workspace.  
    - qt5-wayland.  
    - [xorg-xwayland](https://wiki.archlinux.org/title/Wayland#XWayland).  

#### 1.2. Essensial system utilities:  
- powerdevil: power management system for plasma. Can be found in `Settings -> Power Management`.  
- bluedevil: bluetooth for plasma.  
- pulseaudio-bluetooth: bluetooth support for pulseaudio (if you want to use bluetooth headsets,... then this is needed).  
- plasma-pa: PulseAudio for plasma.  
- pavucontrol-qt: A Qt Pulseaudio mixer.  
- plasma-nm: Network manager for plasma.  
- plasma-firewall: kde's frontend firewall. Can be found in system settings.  
- ufw: plasma-firewall backend (alternative: firewalld).  
- ufw-extras: extra configuration files for ufw.
- plasma-vault: encrypted vault.  
- cryfs/gocryptfs: backend for plasma-vault. Note: encfs is old and insecure -> don't use.  
- kup: KDE's backup solution, a frontend for bup.  
- bup: Efficient backup system based on the git packfile format.  
- plasma-thunderbolt: Plasma integration for controlling Thunderbolt devices (only necessary if your machine has thunderbolt).  
- plasma-systemmonitor: plasma's new (as of late 2021) system monitor app - modern replacement for ksysguard.  
- kscreen: manage screen orientation, resolution,... ( a needed GUI app (in system settings) for those with more than 1 screen/monitor).  
- ibus: can't get any more self-explanatory.  

#### 1.3. Nice niceties:  
- kinit: helper library to speed up kde app start time.  
- pulseaudio-zeroconf: [zero configuration networking](https://en.wikipedia.org/wiki/Zero-configuration_networking) support for PulseAudio.  
- pulseaudio-alsa: optional but **recommended** package to go with pulseaudio.  
- alsa-tools: advanced tools for certain sound cards + alsa-firmware: firmware binaries for each loader program included in alsa-tools package => ***Optional. System runs fine without***.  
- sddm: KDE's default Display Manager (the screen that you enter password to log into your computer).  
- sddm-kcm: Config Module for SDDM in system settings.  
- kdf: KDiskFree. View Disk Usage.  
- qt5-virtualkeyboard: adds virtual keyboard to KDE.  
- xdg-desktop-portal + xdg-desktop-portal-kde: Helps [integrate kde && gtk](https://wiki.archlinux.org/title/Firefox#KDE_integration) by, for example, letting GTK apps (such as firefox or brave) use the KDE's file picker dialog.  
- octopi: simple Qt frontend for the package manager (similar to kde's muon or gnome's synapse).  
- octopi-notifier-frameworks (AUR): Notifier for Octopi with Knotifications support.  
- pamac-all: Great GTK3 software center with support for AUR + flatpak + snap and possibly appimages in the future.  
- [kde-gtk-config](https://archlinux.org/packages/extra/x86_64/kde-gtk-config/): GTK configurator for KDE (change GTK2/GTK3 theme to [match KDE's Qt themes](https://wiki.archlinux.org/title/Uniform_look_for_Qt_and_GTK_applications)).  
    - Theme configurtor apps worth checking out: [Qt5ct](https://archlinux.org/packages/community/x86_64/qt5ct/) && [kvantum](https://archlinux.org/packages/community/x86_64/kvantum/).
    - Also check these links out: [[1]](https://github.com/tsujan/Kvantum/issues/221), [[2]](https://www.reddit.com/r/gnome/comments/jaqave/how_do_i_get_qt_apps_to_use_my_installed_qt_theme/), [[3]](https://askubuntu.com/questions/72600/how-to-configure-gnome-3-through-a-configuration-file/158613#158613).  
- breeze-gtk: breeze theme for gtk.  
- bluez-utils: Development and debugging utilities for the bluetooth protocol stack.  
- khotkeys: extra settings to configure custom hotkeys (kind of unnessary but nice to have).  
- kdeconnect: connect computer and phone + sshfs (optional): remote filesystem browser + qt5-tools (optional): for some runcommand plugin actions.  
- kleopatra: Certificate Manager and Unified Crypto GUI (use *this* over kgpg).  
- noto-fonts-emoji: emojis (necessary if you use the emoji-selector app (installed by default with KDE plasma)).  
- konsole (+ yakuake): great terminal emulator in general; uses kde libs and deps so won't be bloated on a kde system. Necessary if you want to use terminal panel in Dolphin (Press F4 in dolphin).  
- kate: text editor.  
- ffmpegthumbs: to display video thumbnail in dolphin.  
- gst-plugins-base + gst-plugins-good + gst-libav: to play video preview in dolphin's preview panel (Press F11 in dolphin). Only necessary if you choose the default phonon-qt5-gstreamer during Kde plasma installation; otherwise the phonon-qt5-vlc package alone is enough (altho it would also install a bunch of dependancy programs such as vlc (which is kinda bloated if you only use vlc for typical video playback; vlc is a very powerful tool, make sure you actually need/use all of it's functionalities)).
- gst-plugins-bad + gst-plugins-ugly: additional gstreamer stuff (Optional but doesn't hurt to have).  
- kdegraphics-thumbnailers: to preview pdf in dolphin.  
- kdegraphics-mobipocket: preview .mobi (ebook) files thumbnails in dolphin and other kde apps.  
- xclip: clipboard support for terminal text editors (such as neovim and micro). Alternatively there's xsel but xclip is better.  
- nvidia-prime: scripts to use nvidia gpu with render offload option. Simply download the package then put `prime-run` before any commands/programs and the nvidia gpu will be used (for those commands/programs). **NOTE**: do NOT use xf86-video-intel!! those drivers are shiet and will mess with your nvidia gpu. if u already have it installed, just remove the package then reboot (reboot again if you encounter blackscreen ) and the default "modesetting" drivers that come with linux kernel will be used.  
- tlp: distro/DE agnostic power management (usually a good idea to have if you're installing on a laptop; however, linux laptop battery life has always been and is still quite weak so don't expect much).  

#### 1.4. Meh niceties:  
- [kdeplasma-addons](https://archlinux.org/packages/extra/x86_64/kdeplasma-addons/): a bunch of KDE stuff. recommended unless you know **exactly** what you're doing and don't want all this "bloat".  
- [kde-cli-tools](https://archlinux.org/packages/extra/x86_64/kde-cli-tools/): useful cli tools to better interact with the system. Useful if you plan on learning/developing kde. Typically installed by default.  
- [kaccounts](https://archlinux.org/packages/?sort=&q=kaccounts&maintainer=&flagged=): Small system to administer web accounts for the sites and services across the KDE desktop (will be installed automatically anyways if you intend to use some of KDE's media-related applications. Eg: gwenview, kdenlive, ark,...). Although, it will only have the option to add OpenDesktop account.  
    - kaccounts-providers: adds additional options to kaccounts, such as: ownCloud, NextCloud, Google.  
    - kaccounts-integration: web accounts (google, owncloud,...) integration.  
- kcharselect: Charater selector.  
- kio: Resource and network access abstraction.  
- kio-extras: Additional components to increase the functionality of KIO.  
    - qt5-imageformats: Plugins for additional image formats (such as: TIFF, MNG, TGA, WBMP). Helps display thumbnails for additional image formats.  
    - kimageformats: Image format plugins for Qt5. Helps display thumbnails for additional image formats.  
- kio-fuse: FUSE interface for KIO.  
- kio-gdrive: integrate and sync Google Drive with kde applications such as Dolphin (file manager), gwenview (photo viewer),...  
- mtpfs: a FUSE filesystem that supports reading and writing from any MTP device.  
- dolphin-plugins: adds Dropbox and git (and other stuff that you likely won't use) integration to Dolphin.  
- drkonqi: KDE's crash handler. Kind of annoying and not so useful if you know how to check logs.  
- kinfocenter: system information utility. Can be found in `Settings -> System Information`.  
- plasma-disks: monitors S.M.A.R.T capable devices (Eg: nvme ssd) for any failure. this is, however, a kinfocenter module -> to use this, you need kinfocenter as well.  
- packagekit-qt5: To install new krunner plugins and show native apps on Discover.  
- plasma-browser-integration: (shitty) integration for your browser to better fit in with the plasma shell. decent if you use kdeconnect and/or search browser tab through krunner.  
- kwrited: KDE daemon that captures console output (e.g. broadcast messages) (basically it listens to write and wall (**w**rite to **all**) commands) and prints it in an X window. Might come in handy if you write scripts that wishes to display output as desktop notification or some other obscure usecases. Test this with these commands: `echo Testing > /dev/pts/0` and `echo 'FBI!! OPEN UP!!' > /dev/pts/1`. What's a pts you ask? [pseudo-terminals](https://unix.stackexchange.com/a/93640/486208). I honestly don't know who actually uses this app :v maybe some sysadmin who wants to annoy their users with a random wall message; or maybe some random app uses this as its notification? Again, no fking idea why this is still a thing on modern casual user's linux boxes. Maybe I'm just dumb :v but so far haven't gotten into situations where i would need it. If you, for some reason, are interested in this functionality, it's easier to find the docs for [xwrited](https://code.guido-berhoerster.org/projects/xwrited/) (which is what kwrited was based off of).  
- kdialog: display dialog boxes from shell scripts. Syntax inspired from `dialog` command.  
- keditbookmarks: extention to add bookmarking functionality to (a few) applications like Konsole and krdc.  
- purpose: common dependancy for many kde apps that you use (gwenview, kdenlive, okular,...). Helps integrate many services and plugins (like file sharing, publishing,...) + prison: A barcode API to produce QRCode barcodes and DataMatrix barcodes.  
- kgamma5: change gamma settings. Can be found in `Settings -> Display and Monitor -> Gamma`.  
- kwallet: Secure and unified container for user passwords.  
- kwallet-pam: just to be clear, the GUI application that you likely encountered is called kwalletmanager which is a password manager and a front-end to kwallet (an integral (as in **essential**) component to the KDE plasma desktop) -> you may hate kwallet**manager** (the GUI app) and have already uninstalled it but KDE is still using kwallet underneath (unless you modify ~/.config/kwalletrc) -> some applications (Eg: brave browser, kmymoney, krfb,...) will ask to create a new wallet to store sensitive data -> if you hate that dialog (as many many  **many** others do) and is too lazy to do research into how kwallet works, what is gnupg, what is blowfish encryption,... , kwallet-pam is the solution you've been looking for! Basically, kwallet-pam unlocks kwallet automatically on login (with caveats). However, one of kwallet-pam's caveat is that it's incompatible with GnuPG keys -> which is why i personally don't use kwallet-pam (while others might find it a godsent).  
- ksshaskpass: front-end for ssh-add which stores the password of the ssh key in KWallet. With this package, everytime you ssh into a remote machine, a GUI dialog box will pop-up asking for the password.  
- kwalletmanager: GUI frontend for kwallet.  
- appmenu-gtk-module: some gtk apps (such as nvidia-settings) require this package to be able to display its icon in app tray.  
- ocs-url: An install helper program for items served via OpenCollaborationServices.  
- systemd-kcm: manage systemd services from the Settings menu.  

#### 1.5. ArcoLinux stuff:  
- [x] arcolinux-grub-theme-vimix-git  
- [x] arcolinux-kvantum-theme-arc-git  
- [x] arcolinux-mirrorlist-git  
- [x] arcolinux-keyring  
- [x] arcolinux-paru-git  
- [x] arcolinux-sddm-sugar-candy-git  
- [x] arcolinux-systemd-services-git  
- [x] arcolinuxd-system-config-git  

#### 1.6. Optionals:  
**Network discovery**:  
- zeroconf-ioslave: Adds an entry to Dolphin's Network page to show local services such as printers which advertise themselves with DNSSD (called Avahi or Bonjour by other projects).  

**Printing**:  
* Main:  
    - print-manager: set up and configure printers.  
    - system-config-printer: auto-detect the printer driver.  
    - colord: for ICC (International Color Consortium) color profile support.  
    - cups-pk-helper: cups policykit helper. To configure cups with fine-grained privileges. Basically makes system-config-printer use PolicyKit.  
    - cups: The CUPS Printing System.   
    - cups-pdf: PDF printer for cups.  
    - bluez-cups: CUPS printer backend for Bluetooth printers.  
* Extra drivers:  
    - splix: drivers for Samsung printers.  
    - hplip: drivers for HP printers.  
        - python-pillow (optional) - for commandline scanning support.  
        - python-pyqt5 (optional) - for running GUI and hp-toolbox.  
        - python-reportlab (optional) - for pdf output in hp-scan.  
        - sane (optional) - for scanner support.  
        - xsane (optional) - sane scanner frontend.  
        - libusb (optional) - for advanced usb support.  
* Some old shiet:  
    - gsfonts  
    - gutenprint  
    - foomatic-db  
    - foomatic-db-engine  
    - foomatic-db-gutenprint-ppds  
    - foomatic-db-nonfree  
    - foomatic-db-nonfree-ppds  
    - foomatic-db-ppds  

**Samba**:  
- samba: SMB Fileserver and AD Domain server.  
- smbclient: Tools to access a server's filespace and printers via SMB.  
- kdenetwork-filesharing: SMB protocal file sharing for KDE. With this plugin you can set your folders to be shared on your local network using Samba.  
- smb4k: samba network browsing application.  
- python-pysmbc: Python 3 bindings for libsmbclient.  

### 2. Run commands:  
#### 2.0. Pre-installation:  
```sh
#: If you took the lazy route and used ArcolinuxD iso directly to install the base system then there will be some unwanted packages left. Uninstall them.
sudo pacman -Rn $(pacman -Qqe alacritty arcolinux-alacritty-git arcolinux-wallpapers-git arcolinux-neofetch-git arcolinux-sddm-simplicity-git arcolinux-sddm-simplicity-git sardi-icons surfn-icons-git yay-bin urxvt-resize-font-git urxvt-perls urxvt-fullscreen rxvt-unicode rxvt-unicode-terminfo bibata-cursor-theme-bin polkit-gnome gparted gpart gksu duf-bin dex asciinema arc-gtk-theme termite numlockx nvidia-settings xf86-input-elographics xf86-video-vesa xf86-video-openchrome xf86-video-ati xf86-video-amdgpu xf86-video-nouveau xf86-video-intel vim tmux screen mc nano clonezilla partclone broadcom-wl-dkms arch-install-scripts qemu-guest-agent refind xsel)
#: Sometimes arch keyrings might be currupted -> installation will get aborted -> reinstall the keyrings and update to fix.
sudo pacman -S --noconfirm $(pacman -Qqs keyring) && sudo pacman -Syyu --noconfirm
```

#### 2.1. Minimal setup:  
```sh
#: Update system:
sudo pacman -Syyu
#: 1st: Insall packages + Configure setups:
#: The following is just an example of a decent minimal install. It hits the sweet spot of having all the basics any modern user might need while still staying super compact. You can intsall the following on top of an ArcoLinuxD install and have the minimal KDE experience.
sudo pacman -S plasma-desktop dolphin ffmpegthumbs kcron khelpcenter ksystemlog partitionmanager powerdevil bluedevil pulseaudio pulseaudio-zeroconf pulseaudio-bluetooth plasma-pa pavucontrol-qt plasma-nm plasma-firewall firewalld plasma-vault kup bup plasma-systemmonitor kscreen ibus kinit sddm sddm-kcm octopi kde-gtk-config khotkeys kdeconnect noto-fonts-emoji kdf opendoas kitty neovim brave-bin
#: If you want brave to stop asking you to choose between blowfish or gpg altogether you can add the following:
echo "--password-store=basic" > $HOME/.config/brave-flags.conf"
#: Download and setup vietnamese ibus-bamboo as default
paru -S ibus-bamboo && env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['xkb:us::eng', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
sudo -i
bash -c "echo $'\n#: iBus settings\nQT_IM_MODULE=ibus\nGTK_IM_MODULE=ibus\nSDL_IM_MODULE=ibus\nXMODIFIERS=@im=ibus' >> /etc/environment"
exit
bash -c "echo $'\n#: Start iBus\nibus-daemon -drxR --panel=/usr/lib/kimpanel-ibus-panel' >> $HOME/.xprofile"

#: 2nd: Enable services:
#: Enable wifi && bluetooth && display manager. Run after new OS installation.
sudo systemctl enable NetworkManager bluetooth.service sddm.service
#: Shut down the computer + take out the installation usb -> the 3 services above will be enabled on startup.
sudo shutdown -h now
```

#### 2.2. Full(-er) setup:  
```sh
#: Update system:
sudo pacman -Syyu
#: 1st: Install plasma group + Unselect the packages you don't want. Eg: ^4 ^20-21 ^28 ^36 ^38 ^41 + the rest of a full KDE system:
sudo pacman -S --needed --noconfirm bluedevil breeze breeze-gtk drkonqi kactivitymanagerd kde-cli-tools kde-gtk-config kdecoration kdeplasma-addons kgamma5 khotkeys kinfocenter kmenuedit kscreen kscreenlocker ksshaskpass ksystemstats kwallet-pam kwin kwrited layer-shell-qt libkscreen libksysguard milou plasma-browser-integration plasma-desktop plasma-disks plasma-firewall plasma-integration plasma-nm plasma-pa plasma-systemmonitor plasma-vault plasma-workspace polkit-kde-agent powerdevil sddm-kcm systemsettings xdg-desktop-portal-kde kde-system-meta dolphin-plugins ffmpeg ffmpegthumbs kdegraphics-thumbnailers kdegraphics-mobipocket phonon-qt5-gstreamer phonon-qt5 gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly pulseaudio-bluetooth pavucontrol-qt ufw ufw-extras cryfs gocryptfs kup bup ibus kinit pulseaudio-zeroconf pulseaudio-alsa sddm kdf qt5-virtualkeyboard xdg-desktop-portal kvantum bluez-utils kdeconnect sshfs qt5-tools kleopatra konsole yakuake kate xclip nvidia-prime tlp kaccounts-providers kaccounts-integration kcharselect kio kio-extras qt5-imageformats kimageformats kio-fuse kio-gdrive mtpfs packagekit-qt5 kdialog keditbookmarks purpose kwallet appmenu-gtk-module ocs-url systemd-kcm zeroconf-ioslave print-manager system-config-printer colord cups-pk-helper cups cups-pdf bluez-cups

#: 2nd: Install ArcoLinuxD packages:
sudo pacman -S --needed --noconfirm arcolinux-grub-theme-vimix-git arcolinux-kvantum-theme-arc-git arcolinux-mirrorlist-git arcolinux-keyring arcolinux-paru-git arcolinux-sddm-sugar-candy-git arcolinux-systemd-services-git arcolinuxd-system-config-git

#: 3rd: Install user specific packages:
#: Repos:
sudo pacman -S --needed --noconfirm noto-fonts noto-fonts-emoji ttf-joypixels ttf-ubuntu-font-family materia-kde kvantum papirus-icon-theme git curl zsh paru-bin bat exa ripgrep konsave openssh neofetch htop btop yt-dlp ffmpeg fzf hardcode-fixer-git mpv kdenlive opentimelineio opencv kolourpaint kcolorchooser onlyoffice okular gwenview ark kitty neovim brave-bin veracrypt virtualbox virtualbox-host-modules-arch virtualbox-guest-iso latte-dock flameshot qbittorrent freetube octopi
#: AUR:
paru -S --needed --noconfirm ibus-bamboo simplenote-electron-bin haruna kasts virtualbox-ext-oracle octopi-notifier-frameworks 

#: Extra 1: Some Configurations:
#: Set ibus-bamboo as default.
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['xkb:us::eng', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
sudo -i
bash -c "echo $'\n#: iBus settings:\nQT_IM_MODULE=ibus\nGTK_IM_MODULE=ibus\nSDL_IM_MODULE=ibus\nXMODIFIERS=@im=ibus' >> /etc/environment"
exit
bash -c "echo $'\n#: Start iBus\nibus-daemon -drxR --panel=/usr/lib/kimpanel-ibus-panel' >> $HOME/.xprofile"
#: Create && configure `$HOME/.config/fontconfig/fonts.conf` so the system knows which type of emoji to use.
((mkdir -p $HOME/.config/fontconfig/ && touch $HOME/.config/fontconfig/fonts.conf) && bash -c -e "echo $'<?xml version=\'1.0\'?>\n<\!DOCTYPE fontconfig SYSTEM \'fonts.dtd\'>\n<fontconfig>\n <match target=\"font\">\n  <edit mode=\"assign\" name=\"hinting\">\n   <bool>true</bool>\n  </edit>\n  <edit mode=\"assign\" name=\"autohint\">\n   <bool>true</bool>\n  </edit>\n  <edit mode=\"assign\" name=\"hintstyle\">\n   <const>hintslight</const>\n  </edit>\n  <edit mode=\"assign\" name=\"rgba\">\n   <const>rgb</const>\n  </edit>\n  <edit mode=\"assign\" name=\"antialias\">\n   <bool>true</bool>\n  </edit>\n  <edit mode=\"assign\" name=\"lcdfilter\">\n   <const>lcddefault</const>\n  </edit>\n </match>\n <\!-- Set preferred serif, sans serif, and monospace fonts. -->\n <alias>\n  <family>serif</family>\n  <prefer>\n   <family>Noto Serif</family>\n   <family>Noto Color Emoji</family>\n   <family>JoyPixels</family>\n  </prefer>\n </alias>\n <alias>\n  <family>sans-serif</family>\n  <prefer>\n   <family>Noto Sans</family>\n   <family>Noto Color Emoji</family>\n   <family>JoyPixels</family>\n  </prefer>\n </alias>\n <alias>\n  <family>sans</family>\n  <prefer>\n   <family>Droid Sans</family>\n  </prefer>\n </alias>\n <alias>\n  <family>monospace</family>\n  <prefer>\n   <family>Noto Mono</family>\n   <family>Noto Color Emoji</family>\n   <family>JoyPixels</family>\n  </prefer>\n </alias>\n <alias>\n  <family>mono</family>\n  <prefer>\n   <family>Hack</family>\n   <family>Noto Color Emoji</family>\n   <family>JoyPixels</family>\n  </prefer>\n </alias>\n <\!-- Find fonts in these directories. -->\n <dir>/usr/share/fonts</dir>\n <dir>~/.local/share/fonts</dir>\n</fontconfig>' > $HOME/.config/fontconfig/fonts.conf") && sed -i 's/\\//g' $HOME/.config/fontconfig/fonts.conf

#: 4th: Post installation: Enable services + Set default shell + Cleanup + Reboot
#: Enable wifi && bluetooth && display manager && printer.
sudo systemctl enable NetworkManager bluetooth.service sddm.service cups.service cups.socket cups.path cups-browsed.service
#: Set zsh as default shell (for $USER && root). Also, remember to enter zsh once to configure a profile:
chsh -s $(which zsh) && sudo chsh -s $(which zsh) && zsh
#: Clean up files and dirs that are not needed.
rm -rf $HOME/.screenrc $HOME/.bash* $HOME/.config/autostart/arcolinux* $HOME/.config/alacritty $HOME/.config/arcolinux-welcome-app $HOME/.config/neofetch
#: Cleanup leftover dependancies.
paru -c --noconfirm
#: Shut down the computer + take out the installation usb -> all the services above will be enabled on startup.
sudo shutdown -h now

#: Extra 2: Use plasmoids to enhace the KDE experience. Eg:
#: 1. Use KDE's Input Method Panel plasmoid for better ibus integration:
#: Right click your kde panel -> "Add widgets" -> find "Input Method Panel" -> drag and drop the plasmoid onto the panel.
#: 2. Add Pomodoro plasmoid to track resting time:
#: Right click your kde panel -> "Add widgets" -> "Get New Widgets..." -> "Download New Plasma Widgets" -> Find "Fokus" and add to panel.
#: 3. Replace KDE's default calendar with the superior "Event Calender" alternative.
```

#### 2.3. Enable services:  
* Essentials:  
```sh
#: Enable wifi && bluetooth && display manager. Run after new OS installation.
sudo systemctl enable NetworkManager bluetooth.service sddm.service
#: Shut down the computer + take out the installation usb -> the 3 services above will be enabled on startup.
sudo shutdown -h now
```
* Remote access:  
```sh
#: Enable ssh.
sudo systemctl enable --now sshd
#: Get the ip address to access the machine from elsewhere.
ip a
#: On the other machine, run ssh user_name@ip_address -p port_number (Eg: ssh corgi@127.0.0.1 -p 2222)
#: Note: should be disabled if rarely used.
```

* Network discovery:  
```sh
#: Enable Avahi (zeroconf).
sudo systemctl enable --now avahi-daemon.service avahi-dnsconfd.service
#: Note: Relatively [old and useless](https://superuser.com/a/316767). Should be disabled if rarely used.
```

* Printer:  
```sh
#: Enable CUPS.
sudo systemctl enable --now cups.service cups.socket cups.path
#: Make remote CUPS printers available locally.
sudo systemctl enable --now cups-browsed.service
#: Legacy shiet. Don't use!! Only needed for printers that use the old af LPD protocol.
sudo systemctl enable --now cups-lpd.socket
```

* Samba:
```sh
#: Samba needs manual configurations to work properly so head online and read that up 1st.

#: AS SERVER:
#: Create a Samba config file `/etc/samba/smb.conf`.
#: Since the `/etc/samba/smb.conf.default` works most of the time, you can just copy that.
sudo cp /etc/samba/smb.conf.default /etc/samba/smb.conf
#: ArcoLinux has it's own smb.config file you can use:
sudo cp /etc/samba/smb.conf.arcolinux /etc/samba/smb.conf
#: Enable smb && nmb.
sudo systemctl enable --now smb.service nmb.service
#: Note: nmb.service is not required. However, it is needed to access Samba servers by hostname (e.g. smb://hostname/).

#: AS CLIENT:
...
```

## III/ Theming:  
### 1. [Materia Dark](https://store.kde.org/p/1229162)  
#### 1.1. Packages:  
- [ ] materia-kde: global theme for kde.  
- [ ] materia-gtk-theme: Materia theme for GTK. Locate at `System Settings -> Appearance -> Application Style -> Configure GNOME/GTK application style`.   
- [ ] kvantum: theme engine to change/modify Application Style. Also include other packages such as color scheme.  
- [ ] kvantum-theme-materia: theme to use in kvantum.  
- [ ] arcolinux-sddm-materia-git: sddm materia theme (Optional).  
- [ ] papirus-icon-theme: self-explanatory. (Optional but goes well with materia theme).  

#### 1.2. Configure:  
- Open kvantum -> `Change/delete theme` -> Select `MateriaDark` then save and quit.  
- Go to `System Settings -> Appearance` and make the following changes:  
    - Change `Global Theme` to Materia Dark.  
    - Choose either kvantum or kvantum-dark in Application Style (which is using MateriaDark theme since we made the change in kvantum engine earlier).  
    - Plasma Style: Materia / Materia Color. This changes the icons in the system tray (Materia for colors; Materia Color for a uniformed monochrome style(prefer this)).  
    - Colors: your choice. Prefer Materia Dark.  
    - Window Decorations: your choice. Pref Materia Dark.  
    - Icons: your choice. Pref Papirus.  
    - Cursor: your choice. Pref Breeze.  
    - Splash Screen: your choice.  
- Move to `Startup and Shutdown -> Login screen (SDDM)` and choose what you want but pref Materia Dark -> Check `Settings synchronization`.  
- Move to `Workspace Behavior -> Screen Locking` and choose Configure `Appearance` -> Pick new Lockscreen wallpaper.  
- Reboot.  

### 2. Custom: Material Breeze Dark  
#### 2.1. Packages:  
- [x] materia-kde.  
- [x] kvantum.  
- [x] papirus-icon-theme.  

#### 2.2. Configure:  
- Go to `System Settings -> Appearance` and make the following changes:  
    - No need to change global theme (or go with Breeze Dark if you want; ultimately the color scheme will overide this).  
    - Application Style:  
        - Plasma: Breeze.  
        - GTK: Breeze.  
    - Plasma Style: Materia Color.  
    - Colors: KvArcDark.  
    - Window Decorations: Breeze.  
    - Fonts: your choice. Noto (default) is nice.  
    - Icons: Papirus-Dark.  
    - Cursor: Breeze.  
    - Splash Screen: your choice. Pref Materia Dark, QuarksSplashDark.  
- Move to `Startup and Shutdown -> Login screen (SDDM)` and choose what you want but pref Materia Dark -> Check `Apply Plasma Settings...`.  
- Move to `Workspace Behavior -> Screen Locking` and choose Configure `Appearance` -> Pick new Lockscreen wallpaper.  
- Reboot.  

### 3. [Nordic Darker KDE](https://store.kde.org/p/1633675/)  

## IV/ Apps:  
### 1. Tiling/Dynamic Window Manager (can be used to [substitute Kwin](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma#System_Wide:_Adding_an_XSession))  
- [ ] Window managers: i3, awesome, dwm.  
- [ ] Compositor: picom.  
- [ ] Wallpaper manager/displayer: nitrogen.  
- [ ] Panel (optional): latte-dock.  
- [ ] Widgets (optional):
- [ ] Notification (optional): dunst

### 2. Essential cli tools  
- [x] git
- [x] curl
- [x] zsh

### 3. Package managers  
***AUR helpers***
- [ ] ~~yay~~  
- [x] paru  

***Universal Linux package managers***:  
- [ ] ~~snapd (fuck this shit)~~  
- [ ] flatpak (meh, prefer not to)  
- [ ] appimagelauncher  

***Programming-language-specific package managers***
- [ ] Python: conda (+ miniconda3), pip (the og. find packages [here](https://pypi.org/)).  
- [ ] Rust: cargo.  
- [ ] Js/Node: npm, yarn.  
- [ ] Perl:
- [ ] Go:

### 4. Great cli tools  
- [x] [bat](https://github.com/sharkdp/bat): cat/less alternative written in Rust.  
- [x] [exa](https://github.com/ogham/exa): modern ls alternative written in Rust.  
- [x] [ripgrep](https://github.com/BurntSushi/ripgrep): grep alternative written in Rust.  
- [ ] [espanso](https://github.com/federico-terzi/espanso): Cross-platform Text Expander written in Rust.  
- [x] [konsave](https://github.com/Prayag2/konsave): Plasma settings saver.  
*****
- [x] openssh.  
- [x] neofetch.  
- [ ] ~~cmatrix~~ => check out [neo](https://github.com/st3w/neo) instead.  
- [ ] ~~pipes.sh~~  
- [x] htop: for actual top usage + [btop++](https://github.com/aristocratos/btop): for style.  
- [ ] gallery-dl  
- [x] ~~youtube-dl~~ => Gets giga blocked by youtube => use yt-dlp instead  
- [x] ffmpeg  
- [x] fzf/skim  
- [x] ripgrep
- [ ] preload/Go-preload  
- [ ] [Rclone](https://github.com/rclone/rclone) sync files to/from cloud storage.  
- [ ] [hardcode-fixer-git](https://github.com/Foggalong/hardcode-fixer).  
- [ ] [hardcode-tray](https://github.com/bilelmoussaoui/Hardcode-Tray).  

### 5. Media  
- [x] mpv  
- [x] haruna  
- [ ] ~~deadbeef / strawberry / [Tauon](https://flathub.org/apps/details/com.github.taiko2k.tauonmb) / [Sayonara](https://aur.archlinux.org/packages/sayonara-player/)~~  
- [ ] spotifyd + spotify-tui  

### 6. Editing  
- [x] kdenlive (Vdideo editor).  
    - [x] opentimelineio: timeline export/import.  
    - [x] opencv: for motion tracking.  
    - [ ] recordmydesktop: screen capture.  
- [ ] gimp (image manipulation and editing. Adobe Photoshop alternative).  
- [ ] inkscape (SVG editor. Adobe Illustrator alternative).  
- [x] kolourpaint (window's Paint alternative).  
- [x] kcolorchooser.  
- [ ] blender.  
- [ ] obs-studio.  

### 7. Office suite  
- [x] onlyoffice: write, powerpoint, excel.  
- [x] okular: pdf viewer.  
- [x] gwenview / [qimgv](https://aur.archlinux.org/packages/qimgv/) / [qview](https://aur.archlinux.org/packages/qview/): image viewer.  
- [x] ark: archiver.  
- [ ] thunderbird/trojita: email client.  
- [ ] skanlite/skanpages: Scanning Application.  
- [ ] [joplin-desktop](https://github.com/laurent22/joplin)/[qownnotes](https://www.qownnotes.org/installation/arch.html).  
- [x] simplenote-electron-bin.  
- [ ] Kontact: KDE's full PIM suit  
    - [x] KMail: email client.  
    - [ ] KOrganizer: calendar and scheduling component. Integrates well with Zanshin (has a to-do panel that connects with zanshin).   
    - [ ] KAddressBook: contact management.  
    - [ ] ~~Akregator: RSS news reader~~ => pretty decent but can't search for feeds and the experience is quite bad with large images and tiny fonts.  
    - [ ] KNotes: sticky notes.  
    - [ ] ~~Kjots: note taking~~ => doesn't seem to tightly integrate with the other apps (other than Kontact itself) -> Joplin seems like the better option.  
    - [ ] Zanshin: To-do list.  
    - [ ] Extras (for added functionality and performance):  
        - [ ] kdepim-runtime
        - [ ] kdepim-addons

### 8. Work stuff  
- [ ] doas: more secure sudo alternative.  
- [x] kitty: GPU accelerated terminal emulator.  
- [x] neovim: vim alternative  
- [x] brave-bin: browser of choice, highly secure.  
- [x] veracrypt: disk encryption.  
- [x] virtualbox + virtualbox-host-modules-arch (+ optional: virtualbox-guest-iso, virtualbox-ext-oracle (AUR)).  
- [ ] krdc: Remote Desktop Client.  
- [ ] krfb: Desktop Sharing.  
- [ ] wireshark-qt.  
- [ ] fritzing (optional. has several component models but can probably found elsewhere as well).  
- [ ] freecad + kicad (they compliment eachother).  
- [ ] octave (Matlab replacement).  
- [x] kompare: KDE alternative for Meld - a graphical diff tool.  

### 9. Others  
- [x] ibus-bamboo.  
- [x] latte-dock.  
- [x] flameshot.  
- [x] qbittorrent.  
- [ ] xdman (XtremeDownloadManager) + browser extention.  
- [ ] ~~[Lector](https://github.com/BasioMeusPuga/Lector).~~ => unmaintained and the AUR packages won't start. Build from source if want to use.  
- [x] [Kasts](https://github.com/KDE/kasts).  
- [ ] [Fluent Reader](https://github.com/yang991178/fluent-reader) (desktop) + [Fluent Reader Lite](https://github.com/yang991178/fluent-reader-lite) (mobile): Rss reader.  
- [ ] etcher.  
- [ ] ventoy.  
- [x] freetube.  
- [ ] [tdrop-git](https://github.com/noctuid/tdrop): a WM-Independent dropdown window/terminal creator.  
*****
- [ ] [hblocks](https://github.com/hectorm/hblock).  
- [ ] [hosts](https://github.com/StevenBlack/hosts).  
- [ ] [firejail](https://github.com/netblue30/firejail).  
- [x] [apparmour](https://gitlab.com/apparmor/apparmor).  
- [ ] [clamav](https://wiki.archlinux.org/title/ClamAV).  
*****
plasmoids:  
- [ ] Event Calender.  
- [x] Fokus.  
