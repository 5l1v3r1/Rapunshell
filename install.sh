#!/usr/bin/bash
# Rapunshell
# Coded by Nedi Senja
# Github: https://github.com/stepbystepexe/Rapunshell
clear
trap 'echo Keluar...; exit 1;' SIGINT SIGTSTP
checkroot(){
if [[ "$(id -u)" -ne 0 ]]; then
   printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mMohon, jalankan program root!\n\n\e[0m"
   exit 1
fi
}
#checkroot
package(){
    printf "\e[0m[\e[1;91m INFO \e[0m] \e[0;100;77;1m Menginstall paket & tool \e[0m\n\n"
    sleep 1
    (trap '' SIGINT SIGTSTP && command -v bash > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Bash, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install bash > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mBash tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v curl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall cURL, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install curl > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mcURL tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v wget > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Wget, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install wget > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mWget tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v openssl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Openssl, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install openssl > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mOpenssl tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python2 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Python2, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python2 > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mPython2 tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python3 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Python3, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python3 > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mPython3 tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v php > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall PHP, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install php > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mPHP tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v git > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Git, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install git > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mGit tidak terinstall.\n\e[0m"; }) & wait $!
}
termuxupdate(){
    package
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] Update & upgrade termux [Y/n] ' dat
        if [[ $dat == 'y' || $dat == 'Y' ]]; then
        echo
        apt update && apt upgrade
        echo
        installtools
        sleep 0.1
            elif [[ $dat == 'n' || $sat == 'N' ]]; then
            echo
            exit 1
            echo
        else
            echo
    fi
}
installtools(){
    mkdir -p tools
    cd tools
    # Anonymous
    echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstalll Anonymous\e[0m"
    git clone https://github.com/stepbystepexe/Anonymous
    # BlackHydra
    echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstalll BlackHydra\e[0m"
    git clone https://github.com/stepbystepexe/BlackHydra
    # PhisingGo
    echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstalll PhisingGo\e[0m"
    git clone https://github.com/stepbystepexe/PhisingGo
    # SocialFish
    echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstalll SocialFish\e[0m"
    git clone https://github.com/stepbystepexe/SocialFish
    # Stepbystep
    echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstalll Stepbystep\e[0m"
    git clone https://github.com/stepbystepexe/Stepbystep
    # Torattacker
    echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstalll Torattacker\e[0m"
    git clone https://github.com/stepbystepexe/Torattacker
    # Darkroom
    echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstalll Darkroom\e[0m"
    git clone https://github.com/stepbystepexe/Darkroom
    # Facetool
    echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstalll Facetool\e[0m"
    git clone https://github.com/stepbystepexe/Facetool
    # Multiface
    echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstalll Multiface\e[0m"
    git clone https://github.com/stepbystepexe/Multiface
    # Ddosattack
    echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstalll Ddosattack\e[0m"
    git clone https://github.com/stepbystepexe/Ddosattack
    # Spoofing
    echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstalll Spoofing\e[0m"
    git clone https://github.com/stepbystepexe/Spoofing
    # Grabspmas
    echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstalll Grabspams\e[0m"
    git clone https://github.com/stepbystepexe/Grabspams
    # Spamerlife
    echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstalll Spamerlife\e[0m"
    git clone https://github.com/stepbystepexe/Spamerlife
    # Tebasindex
    echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstalll Tebasindex\e[0m"
    git clone https://github.com/stepbystepexe/Tebasindex
    # Thefacesite
    echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstalll Thefacesite\e[0m"
    git clone https://github.com/stepbystepexe/Thefacesite
    # Exstrakey
    echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstalll Exstrakey\e[0m"
    git clone https://github.com/stepbystepexe/Exstrakey
    # Compilers
    echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstalll Compilers\e[0m"
    git clone https://github.com/stepbystepexe/Compilers
    # Calculator
    echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstalll Calculator\e[0m"
    git clone https://github.com/stepbystepexe/Calculator
    # Musicplayer
    echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstalll Musicplayer\e[0m"
    git clone https://github.com/stepbystepexe/Musicplayer
    # X-Music
    echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstalll X-Music\e[0m"
    git clone https://github.com/stepbystepexe/X-Music
    # Apkdown
    echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstalll Apkdown\e[0m"
    git clone https://github.com/stepbystepexe/Apkdown
    # Jdwlsholat
    echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstalll Jdwlsholat\e[0m"
    git clone https://github.com/stepbystepexe/Jdwlsholat
    # Jamalarm
    echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstalll Jamalarm\e[0m"
    git clone https://github.com/stepbystepexe/Jamalarm
    # Useragent
    echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstalll Useragent\e[0m"
    git clone https://github.com/stepbystepexe/Useragent
    # Quotes
    echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstalll Quotes\e[0m"
    git clone https://github.com/stepbystepexe/Quotes
    # MyBlog
    echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstalll MyBlog\e[0m"
    git clone https://github.com/stepbystepexe/Myblog
    # JavaCode
    echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstalll JavaCode\e[0m"
    git clone https://github.com/stepbystepexe/JavaCode
    sleep 1
        read -p $'\n\e[0m[\e[1;97m+\e[0m] Kembali ke tool, Rapunshell [Y/n] ' opt
            if [[ $opt == 'y' || $opt == 'Y' ]]; then
            cd $HOME/rapunshell
            bash rapunshell.sh
                elif [[ $opt == 'n' || $opt == 'N' ]]; then
                echo
                exit 1
                echo
            else
                echo
                exit 1
                echo
        fi
}
termuxupdate
