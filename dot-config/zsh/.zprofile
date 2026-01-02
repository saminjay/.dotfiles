source "${XDG_CONFIG_HOME}/zsh/aliases.zsh"
source "${XDG_CONFIG_HOME}/zsh/funcs.zsh"

################################################################################
#                   OPTIONS                                                    #
################################################################################

setopt AUTO_CD
setopt APPEND_HISTORY
setopt HIST_NO_STORE
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

################################################################################
#                   AUTOLOADS                                                  #
################################################################################

autoload -U edit-command-line
zle -N edit-command-line
bindkey "\C-x\C-e" edit-command-line
