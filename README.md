[XDG Base Directories](https://wiki.archlinux.org/title/XDG_Base_Directory)

# [Alacritty](https://github.com/alacritty/alacritty)
A GPU accelerated Terminal Emulator
```bash
sudo pacman -S alacritty
stow alacritty
```

# [TMUX](https://github.com/tmux/tmux/wiki)
A Terminal multiplexer, to store multiple sessions and open panes and windows inside the terminal
```bash
sudo pacman -S tmux
git clone https://github.com/tmux-plugins/tpm ${XDG_DATA_SHARE}/tmux/plugins/tpm
stow tmux
```

# [ZSH](https://www.zsh.org/)
Fork of bash with many new features and config options
```bash
sudo pacman -S zsh
sudo chsh -s ${which zsh}
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${XDG_DATA_SHARE}/powerlevel10k
stow zsh
```

# [NVIM](https://github.com/neovim/neovim)
Fork of vim with many new features and config options
```bash
sudo pacman -S nvim
stow nvim
```

## LSPs
Installed using pacman 
- typescript-language-server
- bash-language-server
- marksman
- gopls
- lua-language-server

```bash
sudo pacman -S typescript-language-server bash-language-server marksman gopls lua-language-server
```

Installed through mason or from AUR repos
- clangd
- html-language-server
- css-language-server

## System level packages
- stow
- wget
- ripgrep
- luarock
- fzf
```bash
sudo pacman -S stow wget ripgrep luarock fzf
```

# Hyprland
A dynamic tiling window manager
```bash
sudo pacman -S hyprland
stow hypr
```

# Waybar
Highly configurable statusbar for Hyprland
```bash
sudo pacman -S Swaync
stow swaync
```

# Acknowledgements
- ThePrimeagen [config](https://github.com/ThePrimeagen/init.lua) [video](https://youtu.be/w7i4amO_zaE?si=d2d7WdR7mMQLEBfN)
- Dreams of Code [config](https://github.com/dreamsofcode-io/dotfiles) [video](https://youtu.be/DzNmUNvnB04?si=dmjmJUhEmUyrRM2g)
- NVIM kickstart [config](https://github.com/nvim-lua/kickstart.nvim)
