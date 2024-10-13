#!/bin/bash

sudo pacman -S - < packages.txt

stow --dotfiles .
