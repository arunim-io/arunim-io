#!/usr/bin/env bash

echo 'Checking for updates...'
yay -Syu

echo 'Checking if python is installed...'
python_version=$(python --version)
echo "This system uses python ${python_version}"

echo 'Checking if pyenv is installed...'
if [ "$(command -v pyenv)" ]; then
  echo "pyenv is already installed. Continuing..."
else
  echo "pyenv is not installed. Installing..."
  yay -Sy pyenv
fi

echo 'Checking if poetry is installed...'
if [ "$(command -v poetry)" ]; then
  echo "poetry is already installed. Continuing..."
else
  echo "poetry is not installed. Installing..."
  yay -Sy python-poetry
fi
poetry config virtualenvs.in-project-folder true

echo 'Checking if pipx is installed...'
if [ "$(command -v pipx)" ]; then
  echo "pipx is already installed. Continuing..."
else
  echo "pipx is not installed. Installing..."
  yay -Sy python-pipx
fi

echo 'Done!'
