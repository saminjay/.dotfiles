################################################################################
#                   FUNCTIONS                                                  #
################################################################################

# NeoVim alias function, if no arguements open directory view
function v() {
    if [[ -p /dev/stdin ]]; then
        cat /dev/stdin | nvim $@
    elif [ -z $1 ]; then
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

# git fetch pr
function git-pr() {
    git fetch $1 pull/$2/head:pr-$2
    echo "pulled pr #$2 to branch: pr-$2"
}
