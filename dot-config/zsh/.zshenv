export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia

export TERMINAL=alacritty
export EDITOR=nvim
export GIT_EDITOR=$EDITOR

export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export GOBIN="$GOPATH/bin"

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
export HISTORY_IGNORE="(ls|cd|pwd|exit|cd ..|lsa|lsl|htop|btop|td)"

# fzf shell integration options
export FZF_DEFAULT_OPTS='--tmux center'
export FZF_COMPLETION_TRIGGER='~~'

################################################################################
#               Forcing XDG_BASE_DIRS                                          #
################################################################################
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
# export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons
