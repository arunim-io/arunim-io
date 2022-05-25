#!/usr/bin/env bash

echo 'Checking for updates...'
yay -Syu

echo 'Checking if zsh is installed...'
if [ "$(command -v zsh)" ]; then
  echo "zsh is already installed. Continuing..."
else
  echo "zsh is not installed. Installing..."
  yay -Sy zsh
fi

echo 'Installing oh-my-zsh...'
if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "oh-my-zsh is already installed. Continuing..."
else
  echo "oh-my-zsh is not installed. Installing..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo 'Installing starship...'
if [ "$(command -v starship)" ]; then
  echo "starship is already installed. Continuing..."
else
  echo "starship is not installed. Installing..."
  yay -Sy starship
fi

echo 'Installing zsh-autosuggestions...'
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
  echo "zsh-autosuggestions is already installed. Continuing..."
else
  echo "zsh-autosuggestions is not installed. Installing..."
  git clone https://github.com/zsh-users/zsh-autosuggestions.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
fi

echo 'Installing zsh-syntax-highlighting...'
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
  echo "zsh-syntax-highlighting is already installed. Continuing..."
else
  echo "zsh-syntax-highlighting is not installed. Installing..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git"${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting
fi

echo 'Installing zsh-autocomplete...'
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete" ]; then
  echo "zsh-autocomplete is already installed. Continuing..."
else
  echo "zsh-autocomplete is not installed. Installing..."
  git clone https://github.com/marlonrichert/zsh-autocomplete.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autocomplete
fi

echo 'Installing you-should-use...'
if [ -d "$HOME/.oh-my-zsh/custom/plugins/you-should-use" ]; then
  echo "you-should-use is already installed. Continuing..."
else
  echo "you-should-use is not installed. Installing..."
  git clone https://github.com/MichaelAquilina/you-should-use.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/you-should-use
fi

echo 'copying other plugins...'
cp -r ../oh-my-zsh/plugins "$HOME"/.oh-my-zsh/custom/plugins

echo 'copying zsh config files...'
cp -r ./.{profile,zprofile,zshrc} "$HOME"
cp -r ../config/starship.toml "$HOME"/.config/starship.toml

echo 'Done!'
