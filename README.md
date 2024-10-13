[XDG Base Directories](https://wiki.archlinux.org/title/XDG_Base_Directory)

# List of packages configured
## [Alacritty](https://github.com/alacritty/alacritty)
A GPU accelerated Terminal Emulator

## [TMUX](https://github.com/tmux/tmux/wiki)
A Terminal multiplexer, to store multiple sessions and open panes and windows inside the terminal

## [ZSH](https://www.zsh.org/)
Fork of bash with many new features and config options
```bash
sudo chsh -s ${which zsh}
```
PS: ZSH does not support XDG_Base_Directory spec, so `export ZDOTDIR=$HOME/.config/zsh/` at the start up. I've done so in Hyprland environment variable.

## [NVIM](https://github.com/neovim/neovim)
Fork of vim with many new features and config options

## [Hyprland](https://wiki.hyprland.org/)
A dynamic tiling window manager

## [Waybar](https://github.com/Alexays/Waybar/wiki)
Highly configurable statusbar for Hyprland

## [Swaync](https://github.com/ErikReider/SwayNotificationCenter)
A simple notification daemon with a GTK gui for notifications and the control center

## [Wofi](https://hg.sr.ht/~scoopta/wofi)
Highly configurable application launcher

# Installation instruciton
```bash
./install.sh
sudo chsh -s $(which zsh)
```

# Acknowledgements
- ThePrimeagen [config](https://github.com/ThePrimeagen/init.lua) [video](https://youtu.be/w7i4amO_zaE?si=d2d7WdR7mMQLEBfN)
- Dreams of Code [config](https://github.com/dreamsofcode-io/dotfiles) [video](https://youtu.be/DzNmUNvnB04?si=dmjmJUhEmUyrRM2g)
- NVIM kickstart [config](https://github.com/nvim-lua/kickstart.nvim) [video](https://youtu.be/m8C0Cq9Uv9o?si=fzcdA9iQVWZahCT2)
- Wofi Tutorial [link](https://mephisto.cc/en/tech/wofi/)
