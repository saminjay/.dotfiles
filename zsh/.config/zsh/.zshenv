export XDG_CONFIG_HOME=~/.config
export XDG_DATA_SHARE=~/.local/share
export XDG_CACHE_HOME=~/.cache

export EDITOR=nvim

export GOPATH=$HOME/go
export GIT_EDITOR=$EDITOR
export DOTFILES=$HOME/.dotfiles

path+=(
    "$HOME/.local/scripts"
    "$HOME/.local/go/bin"
    "$HOME/go/bin"
)
export PATH

# History
export HISTFILE=$XDG_CACHE_HOME/zsh/.zhistory
export HISTSIZE=5000
export SAVEHIST=5000

# export TMUX_PLUGIN_MANAGER_PATH=${XDG_CONFIG_HOME}/tmux/plugins
