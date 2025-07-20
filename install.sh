#!/bin/bash

# Update package list
sudo apt update

# Install Flatpak and GNOME plugin (optional but recommended)
sudo apt install -y flatpak gnome-software-plugin-flatpak

# Add Flathub repository if not already added
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# List of applications to install
apps=(
  "git"
  "curl"
  "wget"
  "guake"
  "fish"
)
# List of Flatpak applications to install
flatpak_apps=(
   "com.spotify.Client"
   "org.mozilla.Thunderbird"
   "com.discordapp.Discord"
   "org.telegram.desktop"
   "com.rtosta.zapzap"
)

# Install APT apps
for app in "${apt_apps[@]}"; do
  echo "Installing via apt: $app"
  sudo apt install -y "$app"
done

# Install Flatpak apps
for app in "${flatpak_apps[@]}"; do
  echo "Installing via flatpak: $app"
  flatpak install -y flathub "$app"
done

echo "All installations completed successfully."
