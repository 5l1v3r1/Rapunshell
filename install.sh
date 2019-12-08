#!/usr/bin/bash
# Tools The Rapunshell, Version1.0
# Coded by Senja
# Github: github.com/stepbystepexe/Rapunshell

clear

trap 'echo Exiting cleanly...; exit 1;' SIGINT SIGTSTP

checkroot() {

if [[ "$(id -u)" -ne 0 ]]; then
   printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mPlease, run this program as root!\n\n\e[0m"
   exit 1
fi

}

checkroot

(trap '' SIGINT SIGTSTP && command -v tor > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling TOR, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install tor > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mTor Not installed.\n\e[0m"; }) & wait $!

(trap '' SIGINT SIGTSTP && command -v openssl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling openssl, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install openssl > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mOpenssl Not installed.\n\e[0m"; }) & wait $!

(trap '' SIGINT SIGTSTP && command -v curl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling cURL, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install curl > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mCurl Not installed.\n\e[0m"; }) & wait $!

(trap '' SIGINT SIGTSTP && command -v bash > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Bash, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install bash > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mBash Not installed.\n\e[0m"; }) & wait $!

(trap '' SIGINT SIGTSTP && command -v python2 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Python2, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > python2 > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mPython2 Not installed.\n\e[0m";}) & wait $!

(trap '' SIGINT SIGTSTP && command -v php > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Php, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install php > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mPhp Not installed.\n\e[0m";}) & wait $!

(trap '' SIGINT SIGTSTP && command -v git > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Git, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install git > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mGit Not installed.\n\e[0m";}) & wait $!

printf "\e[0m[\e[1;94m!\e[0m] \e[1;77mAll Requires are installed!\n\n\e[0m"


installtools() {

mkdir -p tools
cd tools
printf "\e[0m[\e[1;95m!\e[0m] \e[1;77mWaiting Install the Tools\e[0m\n"

git clone https://github.com/stepbystep/anonymous

git clone https://github.com/stepbystep/blackhydra

git clone https://github.com/stepbystep/socialfish

git clone https://github.com/stepbystep/torattacker

git clone https://github.com/stepbystep/spoofing

git clone https://github.com/stepbystep/ddosattack

git clone https://github.com/stepbystep/hekpesbuk

git clone https://github.com/stepbystep/pesbuksql

git clone https://github.com/stepbystep/pesbukmbf

git clone https://github.com/stepbystep/thefacesite

git clone https://github.com/stepbystep/tebasindex

git clone https://github.com/stepbystep/spamerlife

git clone https://github.com/stepbystep/exstrakey

git clone https://github.com/stepbystep/calculator

git clone https://github.com/stepbystep/grabspams

git clone https://github.com/stepbystep/prayersch

git clone https://github.com/stepbystep/quotes

printf "\e[0m[\e[1;96m!\e[0m] \e[1;77mAll are installed my tools\e[0m\n"

}

installtools
