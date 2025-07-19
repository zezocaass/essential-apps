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
)

# Install packages
for app in "${apps[@]}"; do
  sudo apt install -y "$app"
done

echo "Installation complete."