#!/usr/bin/bash
# Rapunshell
# Mod by The Sixty Nine
# Github: github.com/thesixtynine/Rapunshell

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
printf "\e[0;32m        █▀▀ █▀█ █▀█ █ █ █▀█   \e[0;37m█▀▀ █ █ █▀▀ █   █  \n"
printf "\e[0;32m        █   █▀█ █▀▀ █ █ █ █   \e[0;37m▀▀█ █▀█ █▀▀ █   █  \n"
printf "\e[0;32m        ▀   ▀ ▀ ▀   ▀▀▀ ▀ ▀   \e[0;37m▀▀▀ ▀ ▀ ▀▀▀ ▀▀▀ ▀▀▀\n"
printf "\n"

}

template() {

printf "\e[0m[\e[1;94m#\e[0m] \e[0mRapun Shell The Bruteforcers\n\e[0m"
printf "\e[0m[\e[1;93m*\e[0m] \e[0mMod by The Sixty Nine\n\e[0"
printf "\e[0m[\e[1;96m&\e[0m] \e[0mMy Github: @thesixtynine\n\e[0m"
sleep 1

}

menu() {

printf "\n"
printf "\e[0m[\e[1;92m1\e[0m] \e[1;77mInstagram\n"
printf "\e[0m[\e[1;92m2\e[0m] \e[1;77mFacebook\n"
printf "\e[0m[\e[1;92m3\e[0m] \e[1;77mTwitter\n"
printf "\e[0m[\e[1;92m4\e[0m] \e[1;77mUsername\n"
printf "\e[0m[\e[1;92m0\e[0m] \e[1;77mExit\n"
printf "\n"

read -p $'\n\e[0m[\e[0m\e[95m/\e[0m\e[0m] \e[1;77mSelect an option: \e[0m\en' option

if [[ $option == 01 || $option == 1 ]]; then
cd $HOME/rapunshell/sites
bash igchecker.sh

elif [[ $option == 02 || $option == 2 ]]; then
cd $HOME/rapunshell/sites
bash fbchecker.sh

elif [[ $option == 03 || $option == 3 ]]; then
cd $HOME/rapunshell/sites
bash twchecker.sh

elif [[ $option == 04 || $option == 4 ]]; then
cd $HOME/rapunshell/sites
bash username.sh

elif [[ $option == 00 || $option == 0 ]]; then
echo
printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mExit the program!\n\e[0m"
echo
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

#checkroot
#checktor
#dependencies
clearscreen
banner
template
menu
