source "${XDG_CONFIG_HOME}/zsh/.zshenv"
source "${XDG_CONFIG_HOME}/zsh/.zprofile"

bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/neo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source <(fzf --zsh)

eval "$(starship init zsh)"
