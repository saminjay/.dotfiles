#!/usr/bin/env bash

# install all required packages
sudo pacman -S - < packages.txt

# Tmux Plugin Manager
git clone --depth=1 https://github.com/tmux-plugins/tpm ${XDG_DATA_HOME}/tmux/plugins/tpm

# Powerlevel10k theme for zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${XDG_DATA_HOME}/powerlevel10k

# TODO:
# Change shell to zsh
# sudo chsh -s $(which zsh)

# Force gdm to use wayland
ln -s /dev/null /etc/udev/rules.d/61-gdm.rules

stow --dotfiles .

