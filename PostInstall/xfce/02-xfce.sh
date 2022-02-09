#!/bin/bash



echo
echo "DESKTOP SPECIFIC SOFTWARE"
echo

# Installing desktop Enviorment
    sudo apt install -y xfce4
    sudo apt install -y lightdm
    sudo apt install -y lightdm-gtk-greeter
    sudo apt install -y lightdm-gtk-greeter-settings
    sudo systemctl enable lightdm
 
    sudo apt install -y xfce4-goodies
    sudo apt install -y xfce4-terminal
    sudo apt install -y xfce4-screenshooter
    sudo apt install -y xarchiver
#    sudo apt install -y kate
#    sudo apt install -y ark
#    sudo apt install -y gwenview


# SET LIGHTDM /USR/LIGHTDM/LIGHTDM.CONF - LOGIN-GRAPHICAL=TRUE

echo
echo "Done!"
echo

#ADD THEMES DOWNLOADED HERE 



echo
echo "REMOVING SOFTWARE"
echo

    # REMOVING --------------------------------------------------



#avahi                     avahi-discover.desktop
#lstopo                    lstopo.desktop
#hp device                 hplip.desktop
#hp uiscan                 hp-uiscan.desktop
#kwallet                   kwalletmanager5-kwalletd.desktopm
#manjaro userguide         manjaro-documention.dektop
#qt assitdent              assistant.desktop
#qt designer               designer.desktop
#qt lingist                linguist.desktop
#qt qdbusviewer            qtbusviewer.desktop
#qt vl42 totest utility    qv4l2.desktop
#qt vl42 video capture     qvidcap.desktop
#software token            stoken-gui.desktop
#software token (small)    stoken-gui-small.desktop
#steam                     steam.desktop
#userfeedback console      UserFeedbackConsole.desktop
#manjaro setting manager   manjaro-settings-manager.desktop
#manjaro notify
#help                      org.kde.help.desktop




#    sudo apt remove -y konversation
#    sudo apt remove -y firefox
#    sudo apt remove -y filelight
#    sudo apt remove -y k3b
#    sudo apt remove -y manjaro-hello
#    sudo apt remove -y skanlite
#    sudo apt remove -y vlc
#    sudo apt remove -y appimagelauncher
#    sudo apt remove -y kget
#    sudo apt remove -y ksystemlog
#    sudo apt remove -y qbittorrent
#    sudo apt remove -y kcalc
#    sudo apt remove -y kfind
#    sudo apt remove -y kinfocenter
#    sudo apt remove -y yakuake
#    sudo apt remove -y discover
#    sudo apt remove -y plasma-sdk

# HIDING NEEDED BUT NEVER CLICKED --------------------------------------------------

#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/org.gnome.FileRoller.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-livepatch.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-drivers.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/org.gnome.PowerStats.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-system-monitor.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/software-properties-gtk.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-ubuntu-panel.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/update-manager.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-session-properties.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-language-selector.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gnome-usage-panel.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/gucharmap.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/avahi-discover.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/bssh.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/bvnc.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/qv4l2.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/qvidcap.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/UserFeedbackConsole.desktop
#    echo "NoDisplay=true" | sudo tee -a /usr/share/applications/org.kde.plasma.emojier.destop
