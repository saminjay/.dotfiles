[XDG Base Directory](https://wiki.archlinux.org/title/XDG_Base_Directory)


# TMUX
Install tmux and clone tmux-plugins-manager
```bash
sudo pacman -S tmux
git clone https://github.com/tmux-plugins/tpm ${XDG_DATA_SHARE}/tmux/plugins/tpm
```

# ZSH
Install and Change shell to zsh
```bash
sudo pacman -S zsh
sudo chsh -s ${which zsh}
```

## p10k
Clone p10k git repo
```bash
cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${XDG_DATA_SHARE}/powerlevel10k
```

# NVIM
Install nvim
```bash
sudo pacman -S nvim
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
```bash
sudo pacman -S stow wget ripgrep
```

