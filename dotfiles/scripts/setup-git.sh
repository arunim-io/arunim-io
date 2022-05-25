#!/usr/bin/env bash

echo 'Checking for updates...'
yay -Syu

echo 'Checking if git is installed...'
if [ "$(command -v git)" ]; then
  echo "git is already installed. Continuing..."
else
  echo "git is not installed. Installing..."
  yay -Sy git
fi
git config --global user.name "Mugdha Arunim Ahmed"
git config --global user.email "mugdhaarunimahmed2017@gmail.com"

echo 'Checking if github-cli is installed...'
if [ "$(command -v gh)" ]; then
  echo "github-cli is already installed. Continuing..."
else
  echo "github-cli is not installed. Installing..."
  yay -Sy github-cli
fi
gh auth login

echo 'Checking if gitlab-cli is installed...'
if [ "$(command -v glab)" ]; then
  echo "gitlab-cli is already installed. Continuing..."
else
  echo "gitlab-cli is not installed. Installing..."
  yay -Sy gitlab-cli-bin
fi
glab auth login

echo 'Done!'
