source "${XDG_CONFIG_HOME}/zsh/.zshenv"
source "${XDG_CONFIG_HOME}/zsh/.zprofile"

bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "${XDG_CONFIG_HOME}/zsh/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

source <(fzf --zsh)

# print new line before every prompt except the first one
precmd() {
    precmd() {
        echo
    }
}

eval "$(starship init zsh)"
