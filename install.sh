#!/bin/bash

config_dir="$HOME/.config"
dirs=$(ls -d */)

for i in $dirs
do
    if [ $i = "bin/" ]; then
        echo "Stowing local scrpits"
         mkdir -p "$HOME/.local/scripts"
        stow bin
    elif [ $i -ne "personal" ]; then
        echo "Stowing $i"
         mkdir -p "$config_dir/$i"
         stow $i
    fi
done

echo "Stowing personal"
stow personal
