################################################################################
#                   ALIASES                                                    #
################################################################################

# handy cmds
alias ls="ls -F --color=auto"
alias lsa="ls -A"
alias lsl="ls -lAh"
alias grep="grep --color=auto"
alias td="v ~/.personal/TODO.md"
alias k="sudo -b kmonad ~/.config/kmonad/config.kbd"

# frequent dirs
alias personal="cd ~/.personal"
alias private="cd ~/.private"
alias config="cd ~/.config"
alias scripts="cd ~/Projects/personal/dotfiles/dot-local/scripts"
alias dotfiles="cd ~/Projects/personal/dotfiles"
alias projects="cd ~/Projects/personal"
alias work="cd ~/Projects/work"

# cd ups
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias .6="cd ../../../../../.."

################################################################################
#               Forcing XDG_BASE_DIRS                                          #
################################################################################
alias dosbox="dosbox -conf "$XDG_CONFIG_HOME"/dosbox/dosbox.conf"
