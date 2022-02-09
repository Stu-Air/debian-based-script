#!/bin/bash

# --------------- Clean installer folder 
rm -r ~/Desktop/apps
rm -r apps
rm -r gnome/extensions
rm -r xcursor-breeze
rm -r fonts


   sudo apt -y update && sudo apt -y upgrade     
   sudo apt -y autoremove
