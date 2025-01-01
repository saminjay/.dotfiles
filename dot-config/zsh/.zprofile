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
#               Forcing XDG_BASE_DIRS                                          #
################################################################################
alias dosbox="dosbox -conf "$XDG_CONFIG_HOME"/dosbox/dosbox.conf"
