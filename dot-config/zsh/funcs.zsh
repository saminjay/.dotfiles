################################################################################
#                   FUNCTIONS                                                  #
################################################################################

# NeoVim alias function, if no arguments open directory view
function v() {
    if [[ -p /dev/stdin ]]; then
        cat /dev/stdin | nvim "$@"
    elif [ -z "$1" ]; then
        nvim .
    else
        nvim "$@"
    fi
}

# mkcd function
function mkcd() {
    mkdir -p "$1"
    cd "$1"
}

# git fetch pr
function git-pr() {
    if git fetch "$1" "pull/$2/head:pr-$2" ; then
        echo "pulled pr #$2 to branch: pr-$2"
    fi
}

# Fan speed control
function fanctl() {
    if [[ $# -eq 2 ]]; then
        sudo echo "" || return 1
        sudo i8kctl fan1 $1
        sudo i8kctl fan3 $2
    else
        echo "2 arguments required for fan 1 and 2";
    fi
}
