################################################################################
#                   HOOKS                                                      #
################################################################################
preexec() {
    CMD=$1
    CMD_START_TIME=$(date +%s)
}

# print new line before every prompt except the first one
# notify for long commands
precmd() {
    precmd() {
        # notification logic
        local exit_code=$?

        if [[ -n "$CMD_START_TIME" ]]; then
            local duration=$(($(date +%s) - CMD_START_TIME))
            unset CMD_START_TIME

            if [[ $duration -ge 5 ]]; then
                if [[ $exit_code -eq 0 ]]; then
                    notify-send "Done ✅" "${CMD} \nTook ${duration}s"
                else
                    notify-send "Failed ❌" "${CMD} \nExit $exit_code"
                fi
            fi
        fi

        unset CMD

        # new line
        echo
    }
}


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
