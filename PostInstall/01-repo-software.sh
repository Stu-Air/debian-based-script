#! /bin/bash

echo
echo "INSTALLING SOFTWARE"
echo


# ----- SYSTEM THINGS ----- #
    sudo apt install -y gufw                  # Firewall manager
#    sudo apt install -y htop                  # Process viewer
    sudo apt install -y neofetch              # Shows system info when you launch terminal
    sudo apt install -y rsync                 # Remote file sync utility
    sudo apt install -y cronie                # needed for Timeshift
    sudo apt install -y autofs                # Auto-mounter
    sudo apt install -y exfat-utils           # Mount exFat drives
    sudo apt install -y ntfs-3g               # Open source implementation of NTFS file system
    sudo apt install -y fuse                  # needed for Rclone
    sudo apt install -y gconf                 # needed for Duckie TV
    sudo apt install -y tlp                   # Helps laptop battery
    sudo apt install -y bash-completion       # Tab compleation for BASH
    sudo apt install -y zsh                   # ZSH Shell terminal
    sudo apt install -y zsh-completions       # Tab completion for ZSH


    sudo apt install -y rclone                # Cloud Based Sync tool
    sudo apt install -y mpv                   # Multimedia video player
    sudo apt install -y transmission-gtk      # Torrent downloader
    sudo apt install -y thunderbird           # Email Client
    sudo apt install -y libreoffice           # Office Suite
    sudo apt install -y signal-desktop        # signal messaging
    

# ----- EXTRA SOFTWARE ----- #
#    sudo apt install -y gimp                  # GNU Image Manipulation Program
#    sudo apt install -y inkscape              # Vector image creation app
#    sudo apt install -y kdenlive              # Video Production

 ----- SWITCH TO ZSH AND INSTALL PROMPT THEME ----- #
#     chsh -s $(which zsh)
#      mkdir .zsh
#      cd ~
#      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
#       echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# ----- SETTING UP GUFW FIREWALL ----- #


systemctl enable tlp

echo
echo "Done!"
echo
