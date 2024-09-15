# handy cmds
alias ls="ls -F --color"
alias lsa="ls -Fa"
alias c=clear
alias vim=nvim
alias grep="grep --color=always"

# frequent dirs
alias personal="cd ~/.personal"
alias private="cd ~/.private"
alias work="cd ~/.work"
alias config="cd ~/.config"
alias dotfiles="cd ~/.dotfiles"
alias projects="cd ~/Projects"
alias scripts="cd ~/.local/scripts"

# cd ups
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias .6="cd ../../../../../.."

# mkcd function
function mkcd() {
    mkdir -p $1
    cd $1
}
