#!/bin/bash

swap_size="10"    # system default is 60


# ----- Connection to wifi ----- #
   nmcli d wifi connect [SSID] password [PASSWORD]


# ----- Update & Upgrade Debian ----- #
    sudo apt update && sudo apt -y full-upgrade

# ----- Adding Second Drive ----- #
    echo "LABEL=Media                                  /mnt/Media   auto   nosuid,nodev,nofail,x-gvfs-show   0 0" | sudo tee -a /etc/fstab

# ----- Changing swappiness ----- #
    sudo sh -c 'echo "vm.swappiness="'$swap_size' >> /etc/sysctl.d/99-swappiness.conf'

# ----- Dev tools Debian ----- #
    sudo apt install -y build-essential git gettext

# ----- Adding flatpak Repo Debian ----- #
    sudo apt install -y flatpak snapd
     flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

reboot

