#!/data/data/com.termux/files/usr/bin/bash
# Rapunshell
# Coded by Senja
# Github: https://github.com/stepbystepexe/Rapunshell
checkroot(){
if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mPlease, run this program as root!\n\n\e[0m"
    exit 1
fi
}
clearscreen(){
    clear
    reset
    sleep 1
}
dependencies(){
    command -v bash > /dev/null 2>&1 || { echo >&2 "I require bash but it's not installed. Run ./install.sh. Aborting."; exit 1; }
    command -v curl > /dev/null 2>&1 || { echo >&2 "I require curl but it's not installed. Run ./install.sh. Aborting."; exit 1; }
    command -v openssl > /dev/null 2>&1 || { echo >&2 "I require openssl but it's not installed. Run ./install.sh Aborting."; exit 1; }
    if [ $(ls /dev/urandom >/dev/null; echo $?) == "1" ]; then
        echo "/dev/urandom not found!"
    exit 1
fi
}

banner(){
    printf "\n"
    printf "\n"
    printf "\e[0;31m█▀▀▀▄ \e[0;33m█▀▀▀█ \e[0;34m█▀▀▀█ \e[0;32m█   █ \e[0;36m█▀▀▀█  \e[0;35m█▀▀▀▀ \e[0;37m█   █ █▀▀▀▀ █    █  \n"
    printf "\e[0;31m█▀▀▀▄ \e[0;33m█▀▀▀█ \e[0;34m█▀▀▀▀ \e[0;32m█   █ \e[0;36m█   █  \e[0;35m▀▀▀▀█ \e[0;37m█▀▀▀█ █▀▀▀  █    █  \n"
    printf "\e[0;31m▀   ▀ \e[0;33m▀   ▀ \e[0;34m▀     \e[0;32m▀▀▀▀▀ \e[0;36m▀   ▀  \e[0;35m▀▀▀▀▀ \e[0;37m▀   ▀ ▀▀▀▀▀ ▀▀▀▀ ▀▀▀▀\n"
    printf "\n"
}
template(){
    printf "\e[0;1;100;77;m[    Tools The Rapunshell v1.0, Coded by @stepbystep     ]\e[0m\n"
    sleep 1
}
menu(){
    printf "\n"
    printf "\e[0m[\e[1;96;2m01\e[0m] \e[1;77mAnonymous     \e[0m[\e[1;96;2m07\e[0m] \e[1;77mHekpesbuk      \e[0m[\e[1;96;2m13\e[0m] \e[1;77mExstrakey\n"
    printf "\e[0m[\e[1;96;2m02\e[0m] \e[1;77mBlackhydra    \e[0m[\e[1;96;2m08\e[0m] \e[1;77mPesbuksql      \e[0m[\e[1;96;2m14\e[0m] \e[1;77mCalculator\n"
    printf "\e[0m[\e[1;96;2m03\e[0m] \e[1;77mSocialfish    \e[0m[\e[1;96;2m09\e[0m] \e[1;77mPesbukmbf      \e[0m[\e[1;96;2m15\e[0m] \e[1;77mGrabspams\n"
    printf "\e[0m[\e[1;96;2m04\e[0m] \e[1;77mTorattack     \e[0m[\e[1;96;2m10\e[0m] \e[1;77mThefacesite    \e[0m[\e[1;96;2m16\e[0m] \e[1;77mPrayersch\n"
    printf "\e[0m[\e[1;96;2m05\e[0m] \e[1;77mSpoofing      \e[0m[\e[1;96;2m11\e[0m] \e[1;77mTebasindex     \e[0m[\e[1;96;2m17\e[0m] \e[1;77mMyQuotes\n"
    printf "\e[0m[\e[1;96;2m06\e[0m] \e[1;77mDdosattack    \e[0m[\e[1;96;2m12\e[0m] \e[1;77mSpamerlife     \e[0m[\e[1;96;2m18\e[0m] \e[1;77mStepByStep\n"
    echo
    printf "\e[0m[\e[1;93m&\e[0m] LICENSE\n"
    printf "\e[0m[\e[1;94m#\e[0m] Information\n"
    printf "\e[0m[\e[1;92m*\e[0m] Update\n"
    printf "\e[0m[\e[1;91m-\e[0m] Exit\n"
    echo
    read -p $'\n\e[0m[\e[0m\e[95m/\e[0m\e[0m] \e[1;77mSelect an option: \e[0m\en' option
        if [[ $option == 01 || $option == 1 ]]; then
        cd tools/anonymous
        python2 anonymous.py
            elif [[ $option == 02 || $option == 2 ]]; then
            cd tools/blackhydra
            python2 blackhydra.py
                elif [[ $option == 03 || $option == 3 ]]; then
                cd tools/socialfish
                bash socialfish.sh
                    elif [[ $option == 04 || $option == 4 ]]; then
                    cd tools/torattacker
                    bash torattack.sh
                        elif [[ $option == 05 || $option == 5 ]]; then
                        cd tools/spoofing
                        python2 spoofing.py
                    elif [[ $option == 06 || $option == 6 ]]; then
                    cd tools/ddosattack
                    python2 ddosattack.py
                elif [[ $option == 07 || $option == 7 ]]; then
                cd tools/hekpesbuk
                python2 hekpesbuk.py
            elif [[ $option == 08 || $option == 8 ]]; then
            cd tools/pesbuksql
            python2 pesbuksql.py
        elif [[ $option == 09 || $option == 9 ]]; then
        cd tools/pesbukmbf
        python2 pesbukmbf.py
    elif [[ $option == 10 ]]; then
    cd tools/thefacesite
    python2 thefacesite.py
        elif [[ $option == 11 ]]; then
        cd tools/tebadindex
        bash tebasindex.sh
            elif [[ $option == 12 ]]; then
            cd tools/spamerlife
            bash spamerlife.sh
            elif [[ $option == 13 ]]; then
                cd tools/exstrakey
                python2 keyboard.py
                    elif [[ $option == 14 ]]; then
                    cd tools/calculator
                    bash calculator.sh
                        elif [[ $option == 15 ]]; then
                        cd tools/grabspams
                        php grabspams.php
                    elif [[ $option == 16 ]]; then
                    cd tools/prayersch
                    python2 prayersch.py
                elif [[ $option == 17 ]]; then
                cd tools/quotes
                python2 quotes.py
            elif [[ $option == 18 ]]; then
            cd tools/quotes
            bash ngaur.sh
            elif [[ $option == '&' ]]; then
            echo
            nano LICENSE
            echo
            exit 1
            elif [[ $option == '#' ]]; then
            echo
            nano README.md
            echo
            exit 1
            elif [[ $option == '*' ]]; then
            echo
            git pull origin master
            echo
            exit 1
            elif [[ $option == '-' ]]; then
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
    #dependencies
        clearscreen
        banner
        template
        menu
