#!/bin/bash

gtktheme='Arc-Darker' #'Materia-compact'
icontheme='ePapirus'
shelltheme='Arc-Dark' #'Materia-dark-compact'
cursortheme='Breeze' # 'Yaru'
wallpaper=/mnt/Media/Pictures/wallpapers/wallpaper.png     # make this the link to the wallpapers folder and rename wallpapers

#------------------- XFCE -------------------#
xfconf-query -c xsettings -p /Net/ThemeName -s Arc-Dark
xfconf-query -c xfwm4 -p /general/theme -s Arc-Darker
xfconf-query -c xfwm4 -p /general/rounded_corners_radius -s 4
xfconf-query -c xsettings -p /Net/IconThemeName -s ePapirus
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Breeze



gtk theme
icon theme 
shell theme
cursor theme
wallpaper





#to do
# app launchers  google-chrome.desktop  spotify.desktop  chrome-hnpfjngllnobngcgfapefoaidbinmjnm-Default.desktop chrome-emefpkhgihlhfddcjfghpndaeliajgjj-Default.desktop
# clock-format 12h
# show-battery-percentage true
# night-light-enabled true
# natural-scroll true
# two-finger-scrolling-enabled true
# disabled-on-external-mouse
# clock-show-date true
# sleep-inactive-battery-type 'nothing'
# sleep-inactive-ac-type 'nothing'


# ----- LAYOUTS

# panel size
# Autohide
# panel position
# intellihide panel
# click-action 'minimize'
# show-mounts false
# show-trash false
# show-apps-at-top true
# force-straight-corner true

# ----- Desktop

# show-home false
# show-trash false
# icon-size 'small'
# show-volumes false
# show-drop-place false
# add-volumes-opposite false

# ----- terminal 
# Dark theme


# ----- EXTRAS 
# Super button set to whiskermenu super L









#------------------- GNOME SHELL -------------------#
gsettings set org.gnome.shell disabled-extensions "['ubuntu-dock@ubuntu.com','desktop-icons@csoriano']"
gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'ding@rastersoft.com', 'impatience@gfxmonk.net', 'appindicatorsupport@rgcjonas.gmail.com', 'native-window-placement@gnome-shell-extensions.gcampax.github.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'places-menu@gnome-shell-extensions.gcampax.github.com', 'caffeine@patapon.info', 'gnome-shell-screenshot@ttll.de']"
gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'chromium.desktop', 'spotify.desktop', 'chrome-hnpfjngllnobngcgfapefoaidbinmjnm-Default.desktop', 'chrome-emefpkhgihlhfddcjfghpndaeliajgjj-Default.desktop']"
gsettings set org.gnome.desktop.interface clock-format 12h
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true
gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled-on-external-mouse
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
#gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'gb')]"

# --------------------- NAUTILUS -----------------------#
gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
gsettings set org.gnome.nautilus.preferences click-policy 'double'
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'small'

#-------------------- SETTING THEMES ------------------------#
gsettings set org.gnome.desktop.interface gtk-theme $gtktheme
gsettings set org.gnome.desktop.interface icon-theme $icontheme
gsettings set org.gnome.shell.extensions.user-theme name $shelltheme
gsettings set org.gnome.desktop.interface cursor-theme $cursortheme
gsettings set org.gnome.desktop.background picture-uri $wallpaper

#-------------------- FONT --------------------# 
#gsettings set org.gnome.desktop.interface font-name 'Ubuntu Regular 11'
#gsettings set org.gnome.desktop.interface document-font-name 'Sans Regular 11'
#gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono Regular 13'
#gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Ubuntu Bold 11'

#------------------  DASH TO DOCK SETTINGS ------------------#
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner true

#------------------  SPEED UP GNOME ----------------------#
gsettings set org.gnome.shell.extensions.net.gfxmonk.impatience speed-factor '0.50'

#-----------------  DESKTOP ICONS ------------------------#
gsettings set org.gnome.shell.extensions.ding show-home false
gsettings set org.gnome.shell.extensions.ding show-trash false
gsettings set org.gnome.shell.extensions.ding icon-size 'small'
gsettings set org.gnome.shell.extensions.ding show-volumes false
gsettings set org.gnome.shell.extensions.ding show-drop-place false
gsettings set org.gnome.shell.extensions.ding add-volumes-opposite false

#----------------- TERMINAL -----------------------#
#dconf load /org/gnome/terminal/legacy/profiles:/ < terminal-theme.dconf
gsettings set org.gnome.Terminal.Legacy.Settings theme-variant 'dark'

# -------------- Terminal shortcut ----------------#
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Terminal'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Primary><Alt>T'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'gnome-terminal'"

# -------------- Launcher Folder -------------------#
gsettings set org.gnome.desktop.app-folders folder-children "['']" # Remove all folders
gsettings reset org.gnome.shell app-picker-layout

#gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Game/ name 'TV'
#gsettings set org.gnome.desktop.app-folders folder-children "[..., 'TV']"
#gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/TV/ name 'TV'
#gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/TV/ translate true
#gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/TV/ apps "['chrome-dbgkmmbkdmkbceaoijkocgfmlghajaik-Default.desktop', 'chrome-bdghpjoonamidjbamhnnggcceljhjmpj-Default.desktop', 'chrome-jahnifecgkhjbcbjfkplnplfkcebgafc-Default.desktop', 'chrome-enlkekmehifkbcpadgpbhjcepnannhml-Default.desktop', 'chrome-eppojlglocelodeimnohnlnionkobfln-Default.desktop', 'chrome-lfheiaeoljbhacojcpijifmiaagpmjha-Default.desktop']"
