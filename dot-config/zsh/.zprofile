################################################################################
#                   ALIASES                                                    #
################################################################################

# handy cmds
alias ls="ls -F --color"
alias lsa="ls -A"
alias lsl="ls -lAh"
alias grep="grep --color=always"
alias td="v ~/.personal/TODO.md"

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
#                   FUNCTIONS                                                  #
################################################################################

# NeoVim alias function, if no arguements open directory view
function v() {
    if [ -z $1 ]; then
        nvim .
    else
        nvim $@
    fi
}

# mkcd function
function mkcd() {
    mkdir -p $1
    cd $1
}

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
