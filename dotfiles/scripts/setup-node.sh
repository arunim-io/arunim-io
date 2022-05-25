#!/usr/bin/env bash

echo 'Checking for updates...'
yay -Syu

echo 'Checking if volta is installed...'
if [ "$(command -v volta)" ]; then
  echo "volta is already installed. Continuing..."
else
  echo "volta is not installed. Installing..."
  curl https://get.volta.sh | bash
fi

echo 'Intalling latest Node LTS version...'
volta install node

echo 'Checking if yarn is installed...'
if [ "$(command -v yarn)" ]; then
  echo "yarn is already installed. Continuing..."
else
  echo "yarn is not installed. Installing..."
  volta install yarn
fi

echo 'Checking if pnpm is installed...'
if [ "$(command -v pnpm)" ]; then
  echo "pnpm is already installed. Continuing..."
else
  echo "pnpm is not installed. Installing..."
  volta install pnpm
fi

echo 'Done!'
