#!/usr/bin/env bash

# shellcheck disable=SC2024
# install all required packages
sudo pacman -S - <packages.txt

# Tmux Plugin Manager
git clone --depth=1 https://github.com/tmux-plugins/tpm "${XDG_DATA_HOME}/tmux/plugins/tpm"

# Change login shell to zsh
chsh -s "$(which zsh)"

# Force gdm to use wayland
ln -s /dev/null /etc/udev/rules.d/61-gdm.rules

stow .
