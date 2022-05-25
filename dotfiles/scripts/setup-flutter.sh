#!/usr/bin/env bash

echo 'Checking for updates...'
yay -Syu

echo 'Checking if flutter is installed...'
if [ "$(command -v flutter)" ]; then
  echo "flutter is already installed. Continuing..."
else
  echo "flutter is not installed. Installing..."
  yay -Sy bash curl file git mkdir rm unzip which xz-utils zip
  sudo snap install flutter --classic
  flutter sdk-path
fi

flutter doctor

sudo flutter doctor --android-licenses

echo 'Done!'
