#!/usr/bin/env bash

unicode=" ■" 
version="1.2.0"

_black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
_white=$(tput setaf 7)
_bright=$(tput bold)
normal=$(tput sgr0)
_underline=$(tput smul)

up=$(uptime | sed -E 's/^[^,]*up *//; s/mins/minutes/; s/hrs?/hours/;
  s/([[:digit:]]+):0?([[:digit:]]+)/\1 hours, \2 minutes/;
  s/^1 hours/1 hour/; s/ 1 hours/ 1 hour/;
  s/min,/minutes,/; s/ 0 minutes,/ less than a minute,/; s/ 1 minutes/ 1 minute/;
  s/  / /; s/, *[[:digit:]]* users?.*//')

fetch() {
    echo "${blue}    _   ___      ____      ${normal}"
    echo "${blue}   / | / (_)  __/ __ \_____${normal}"
    echo "${blue}  /  |/ / / |/_/ / / / ___/${normal}"
    echo "${blue} / /|  / />  </ /_/ (__  ) ${normal}"
    echo "${blue}/_/ |_/_/_/|_|\____/____/  ${normal}"
    echo ""
    echo "╭────────────╮ "
    echo "│  ${red}${normal} user    │ ${red}$(whoami)${normal}"
    echo "│  ${yellow}${normal} hname   │ ${yellow}$(cat /etc/hostname)${normal} "
    echo "│  ${green}${normal} distro  │ ${green}$(sed -nE "s@PRETTY_NAME=\"([^\"]*)\"@\1@p" /etc/os-release)${normal} "
    echo "│  ${cyan}${normal} kernel  │ ${cyan}$(uname -r)${normal} "
    echo "│  ${blue}󱂬${normal} de/wm   │ ${blue}$XDG_CURRENT_DESKTOP${normal} "
    echo "│  ${magenta}${normal} uptime  │ ${magenta}${up}${normal} "
    echo "│  ${red}${normal} shell   │ ${red}$(echo ${SHELL##*/})${normal} "
    echo "│  ${yellow}${normal} term    │ ${yellow}$(ps -o comm= -p "$(($(ps -o ppid= -p "$(($(ps -o sid= -p "$$")))")))")${normal} "
    echo "├────────────┤ "
    echo "│  ${green} ${normal}colors  │  ${red}$unicode${normal}${yellow}$unicode${normal}${green}$unicode${normal}${cyan}$unicode${normal}${blue}$unicode${normal}${magenta}$unicode${normal}"
    echo "╰────────────╯ "
}

fetch && exit 0