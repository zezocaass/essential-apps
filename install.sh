#!/bin/bash

# Update package lists
sudo apt update

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