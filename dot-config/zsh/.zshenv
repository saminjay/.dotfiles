export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state

export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia

export EDITOR=nvim
export GIT_EDITOR=$EDITOR

export GOPATH=$XDG_DATA_HOME/go
export GOMODCACHE=$XDG_CACHE_HOME/go/mod
export GOBIN=$GOPATH/bin

path+=(
    "$HOME/.local/scripts"
    "$HOME/.local/go/bin"
    "$GOBIN"
)
export PATH

# History
export HISTFILE=$XDG_CACHE_HOME/zsh/.zhistory
export HISTSIZE=5000
export SAVEHIST=5000

