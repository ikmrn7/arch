#!/bin/bash

#############################
### Global Configuration  ###
#############################

# This configuration file defines which AUR helpers,
# code editors, and other tools will be installed.
# It is sourced by the installation script to determine
# what to install.

###################
### AUR Helpers ###
###################
AUR_HELPERS=("paru" "yay")

#######################
### Pacman Packages ###
########################
PACKAGES=(
    # Utilities
    "firefox" "hyprland" "stow" "wget" "fzf" "mako" "waybar" "pamixer" "pavucontrol" 
    "gvfs" "file-roller" "sddm" "hyprpaper" "fuse" "kitty"
    # Theme
    "kvantum" "papirus-icon-theme" "qt6" "qt6ct"
    # Clipboard
    "grim" "slurp" "cliphist"
    # Bluetooth & Wi-Fi
    "bluez" "bluez-utils" "blueman" "network-manager-applet"
    # Volume and Brightness
    "brightnessctl" "pipewire" "pipewire-pulse" "pipewire-alsa" "pipewire-jack" "wireplumber"
    # Misc
    "bat" "tldr" "man" "fastfetch" "btop" "starship" "telegram-desktop" "zoxide" 
    "ttf-jet-brains-mono-nerd" "aspell" "font-manager"
)

####################
### AUR Packages ###
####################

AUR_PACKAGES=("visual-studio-code-bin" "ttf-ms-fonts" "rofi-lbonn-wayland-git" 
    "wlogout-git" "xdg-desktop-portal-hyprland-git" "deepin-gtk-theme" "plasma6-themes-layan-git" 
    "papirus-folders-catppuccin-git" )
