# TMU 
`git clone https://github.com/tmux-plugins/tpm ${XDG_DATA_SHARE}/tmux/plugins/tpm`

# ZSH
## p10k
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${XDG_DATA_SHARE}/powerlevel10k`

# NVIM
## LSPs (install using pacman or any other package manager)
- typescript-language-server
- bash-language-server
- marksman
- gopls
- lua-language-server
- clangd
- html-language-server
- css-language-server

## System level packages
- stow
- wget
- ripgrep

# Stow everything
`ls -d */ | stow`
