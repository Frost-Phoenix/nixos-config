#!/usr/bin/env bash

[ $# -eq 0 ] && { # $# is number of args
    echo "$(basename $0): missing command" >&2
    exit 1
}
prog="$(which "$1")" # see below
[ -z "$prog" ] && {
    echo "$(basename $0): unknown command: $1" >&2
    exit 1
}
shift                          # remove $1, now $prog, from args
tty -s && exec < /dev/null     # if stdin is a terminal, redirect from null
tty -s <&1 && exec > /dev/null # if stdout is a terminal, redirect to null
tty -s <&2 && exec 2>&1        # stderr to stdout (which might not be null)
"$prog" "$@" &                 # $@ is all args
