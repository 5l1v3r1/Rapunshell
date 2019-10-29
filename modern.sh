#!/usr/bin/bash
# Modern Tools Checker Instagram, Facebook, Twitter
# Life Of Programmer
# Coded by Nedi Senja
# Facebook: fb.me/akun.official.016
# Instagram: instagram.com/@dey_016
# WhatsApp: My Privation! OK.
# Github: github.com/thesixtynine/IndoHat

checkroot() {

if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[1;77mPlease, run this program as root!\n\e[0m"
    exit 1
fi

}

checktor() {

check=$(curl --socks5-hostname localhost:9050 -s https://www.google.com > /dev/null; echo $?)

if [[ "$check" -gt 0 ]]; then
    printf "\e[1;77mPlease, check your TOR Connection! Just type \"tor\" or \"service tor start\"\n\e[0m"
    exit 1

fi

}

clearscreen() {

clear
reset
sleep 1

}

dependencies() {

command -v tor > /dev/null 2>&1 || { echo >&2 "I require tor but it's not installed. Run ./install.sh. Aborting."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "I require curl but it's not installed. Run ./install.sh. Aborting."; exit 1; }
command -v openssl > /dev/null 2>&1 || { echo >&2 "I require openssl but it's not installed. Run ./install.sh Aborting."; exit 1; }

command -v awk > /dev/null 2>&1 || { echo >&2 "I require awk but it's not installed. Aborting."; exit 1; }
command -v sed > /dev/null 2>&1 || { echo >&2 "I require sed but it's not installed. Aborting."; exit 1; }
command -v cat > /dev/null 2>&1 || { echo >&2 "I require cat but it's not installed. Aborting."; exit 1; }
command -v tr > /dev/null 2>&1 || { echo >&2 "I require tr but it's not installed. Aborting."; exit 1; }
command -v wc > /dev/null 2>&1 || { echo >&2 "I require wc but it's not installed. Aborting."; exit 1; }
command -v cut > /dev/null 2>&1 || { echo >&2 "I require cut but it's not installed. Aborting."; exit 1; }
command -v uniq > /dev/null 2>&1 || { echo >&2 "I require uniq but it's not installed. Aborting."; exit 1; }

if [ $(ls /dev/urandom >/dev/null; echo $?) == "1" ]; then
echo "/dev/urandom not found!"
exit 1
fi

}

banner() {

printf "\n"
printf "\n"
printf "\e[0;32m  ███╗   ███╗ ██████╗ ██████╗ \e[0;37m███████╗██████╗ ███╗   ██╗\n\e[0m"
printf "\e[0;32m  ████╗ ████║██╔═══██╗██╔══██╗\e[0;37m██╔════╝██╔══██╗████╗  ██║\n\e[0m"
printf "\e[0;32m  ██╔████╔██║██║   ██║██║  ██║\e[0;37m█████╗  ██████╔╝██╔██╗ ██║\n\e[0m"
printf "\e[0;32m  ██║╚██╔╝██║██║   ██║██║  ██║\e[0;37m██╔══╝  ██╔══██╗██║╚██╗██║\n\e[0m"
printf "\e[0;32m  ██║ ╚═╝ ██║╚██████╔╝██████╔╝\e[0;37m███████╗██║  ██║██║ ╚████║\n\e[0m"
printf "\e[0;32m  ╚═╝     ╚═╝ ╚═════╝ ╚═════╝ \e[0;37m╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝\n\e[0m"
#printf "\e[0;4;37m  ●○● 丨几ᗪㄖ几乇丂丨卂 Ꮆ尺卂ㄚ 卄卂ㄒ 爪ㄚ ㄒ乇卂爪 ●○●\n\e[0m"
printf "\n"
printf "\n"

}

template() {

sleep 1
printf "\e[0m[\e[1;94m#\e[0m] \e[0mSimple The Social Tools\n\e[0m"
sleep 1
printf "\e[0m[\e[1;93m*\e[0m] \e[0mCoded by Nedi Senja\n\e[0"
sleep 1
printf "\e[0m[\e[1;96m&\e[0m] \e[0mMy Github: @thesixtynine\n\e[0m"
sleep 1

}

menu() {

printf "\n"
printf "\e[0m[\e[1;92m1\e[0m] \e[1;77mInstagram\n"
printf "\e[0m[\e[1;92m2\e[0m] \e[1;77mFacebook\n"
printf "\e[0m[\e[1;92m3\e[0m] \e[1;77mTwitter\n"
printf "\e[0m[\e[1;92m0\e[0m] \e[1;77mExit\n"
printf "\n"

read -p $'\n\e[0m[\e[0m\e[95m/\e[0m\e[0m] Select an option: \e[0;1;77m\en' option

if [[ $option == 01 || $option == 1 ]]; then
cd $HOME/modern/sites
bash igchecker.sh

elif [[ $option == 02 || $option == 2 ]]; then
cd $HOME/modern/sites
bash fbchecker.sh

elif [[ $option == 03 || $option == 3 ]]; then
cd $HOME/modern/sites
bash twchecker.sh

elif [[ $option == 00 || $option == 0 ]]; then
echo
printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mExit the program!\n\e[0m"
echo
sleep 1
exit 1

else
echo
printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mInvalid option!\n\e[0m"
echo
sleep 1
clearscreen
banner
template
menu
fi

}

clearscreen
banner
template
menu
