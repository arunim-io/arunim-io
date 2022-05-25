#!/usr/bin/env bash

echo 'Checking for updates...'
yay --combinedupgrade --save
yay -Syu

echo 'Setting up docker...'
yay -Sy docker docker--desktop
sudo systemctl enable --now docker
sudo usermod -aG docker "$USER"

echo 'Installing other packages...'
yay -Sy firefox android-studio dbeaver google-chrome postman-bin react-native-debugger visual-studio-code-bin neovim element junction laptop-mode-tools rtl8821ce-dkms-git

echo 'Setting up snap...'
yay -Sy snapd
sudo systemctl enable --now snapd
sudo ln -s /var/lib/snapd/snap /snap

echo 'Done!'
