[XDG Base Directories](https://wiki.archlinux.org/title/XDG_Base_Directory)

# [Alacritty](https://github.com/alacritty/alacritty)
A GPU accelerated Terminal Emulator
```bash
sudo pacman -S alacritty
mkdir ~/.config/alacritty/
stow alacritty
```

# [TMUX](https://github.com/tmux/tmux/wiki)
A Terminal multiplexer, to store multiple sessions and open panes and windows inside the terminal
```bash
sudo pacman -S tmux
git clone https://github.com/tmux-plugins/tpm ${XDG_DATA_SHARE}/tmux/plugins/tpm
mkdir ~/.config/tmux/
stow tmux
```

# [ZSH](https://www.zsh.org/)
Fork of bash with many new features and config options
```bash
sudo pacman -S zsh
sudo chsh -s ${which zsh}
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${XDG_DATA_SHARE}/powerlevel10k
mkdir ~/.config/zsh/
stow zsh
```

# [NVIM](https://github.com/neovim/neovim)
Fork of vim with many new features and config options
```bash
sudo pacman -S nvim
mkdir ~/.config/nvim/
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
```bash
sudo pacman -S stow wget ripgrep luarock
```

