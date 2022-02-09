 
#!/bin/bash

echo
echo "INSTALLING EXTRA SOFTWARE PACKAGES"
echo


# ----- Installing Third Party programs ----- #
   echo " Installing Third Party"
    mkdir ~/Desktop/apps
     cd ~/Desktop/apps

   echo " GOOGLE CHROME"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O GoogleChrome.deb
     sudo dpkg -i GoogleChrome.deb
      sudo apt -y --fix-broken install

   echo " TIMESHIFT"
    wget https://github.com/teejee2008/timeshift/releases/download/v20.11.1/timeshift_20.11.1_amd64.deb -O Timeshift.deb
     sudo dpkg -i Timeshift.deb
      sudo apt -y --fix-broken install

   echo "Dropbox"
    wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb -O dropbox.deb
     sudo dpkg -i dropbox.deb
      sudo apt -y --fix-broken install

   echo "Minecraft"
    wget https://launcher.mojang.com/download/Minecraft.deb -O Minecraft.deb
     sudo dpkg -i Minecraft.deb
      sudo apt -y --fix-broken install

   echo "nordvpn"
    wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
     sudo apt-get install nordvpn-release_1.0.0_all.deb
      sudo apt-get update
       sudo apt-get install nordvpn

   echo "Discord"
    wget https://dl.discordapp.net/apps/linux/0.0.15/discord-0.0.15.tar.gz
     tar -xf discord-0.0.15.tar.gz
      sudo cp -r Discord /usr/share/discord
       sudo chmod a+x /usr/share/discord/Discord
        sudo cp /usr/share/discord/discord.desktop /usr/share/applications/
        
   echo " Duckie TV "
    wget https://github.com/DuckieTV/Nightlies/releases/download/nightly-202011202304/DuckieTV-202011202304-linux-x64.tar.gz
      tar -xf DuckieTV-202011202304-linux-x64.tar.gz
       echo "y" | sudo sh ./setup
        sudo chmod a+x /opt/DuckieTV/DuckieTV
         sudo chmod a+x /opt/DuckieTV/DuckieTV-bin
          cd ..

   echo "ZSH Theme"
    mkdir ~/.zsh
     git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
      echo 'source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

   echo "Signal"
    wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
     cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
      echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
       sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
        sudo apt update && sudo apt install signal-desktop

   echo "brave Browser"
    sudo apt install apt-transport-https curl
     sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
      echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
       sudo apt update
        sudo apt install brave-browser

echo
echo "Done!"
echo

