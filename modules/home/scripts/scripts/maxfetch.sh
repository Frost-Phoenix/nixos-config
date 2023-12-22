#!/usr/bin/env bash

unicode=" " 
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

up=$(uptime | awk -F'( |,|:)+' '{
        d=h=m=0;
        if ($7=="min")
            m=$6;
        else {
            if ($7~/^day/) { d=$6; h=$8; m=$9}
            else {h=$6;m=$7}
        }
    }
    { print h+0,"h",m+0,"m" }
')
up=$(sed -e "s/ h/h/g" <<< ${up})
up=$(sed -e "s/ m/m/g" <<< ${up})

pkgs=$(nix-store --query --requisites /run/current-system | wc -l)

fetch() {
    echo "${cyan}$(tput bold)     _  ___      ____  ____    ${normal}$(tput sgr0)"
    echo "${cyan}$(tput bold)    / |/ (_)_ __/ __ \/ __/    ${normal}$(tput sgr0)"
    echo "${cyan}$(tput bold)   /    / /\ \ / /_/ /\ \      ${normal}$(tput sgr0)"
    echo "${cyan}$(tput bold)  /_/|_/_//_\_"'\\'"____/___/  ${normal}$(tput sgr0)"
    echo ""
    echo "  ╭─────────────╮ "
    echo "  │  ${red} ${normal} user    │ ${red}$(whoami)${normal}"
    echo "  │  ${yellow} ${normal} distro  │ ${yellow}$(sed -nE "s@PRETTY_NAME=\"([^\"]*)\"@\1@p" /etc/os-release)${normal} "
    echo "  │  ${green} ${normal} kernel  │ ${green}$(uname -r)${normal} "
    echo "  │  ${cyan}󱂬 ${normal} de/wm   │ ${cyan}$XDG_CURRENT_DESKTOP${normal} "
    echo "  │  ${blue} ${normal} uptime  │ ${blue}${up}${normal} "
    echo "  │  ${magenta} ${normal} shell   │ ${magenta}$(echo ${SHELL##*/})${normal} "
    echo "  │  ${red}󰏖 ${normal} pkgs    │ ${red}${pkgs}${normal} "
    echo "  ├─────────────┤ "
    echo "  │  ${_white}  ${normal}colors  │${_white}$unicode${normal}${red}$unicode${normal}${yellow}$unicode${normal}${green}$unicode${normal}${cyan}$unicode${normal}${blue}$unicode${normal}${magenta}$unicode${normal}${_black}$unicode${normal}"
    echo "  ╰─────────────╯ "
}

fetch && exit 0