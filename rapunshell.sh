#!/usr/bin/bash
# Rapunshell
# Coded by Nedi Senja
# Github: https://github.com/stepbystepexe/Rapunshell
checkroot(){
if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mMohon, jalankan program root!\n\n\e[0m"
    exit 1
fi
}
clearscreen(){
    clear
    reset
    sleep 1
}
dependencies(){
    command -v bash > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Bash belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v curl > /dev/null 2>&1 || { echo >&2 "Sepertinya paket cURL belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v wget > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Wget belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v openssl > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Openssl belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v python2 > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Python2 belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v python3 > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Python3 belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v php > /dev/null 2>&1 || { echo >&2 "Sepertinya paket PHP belum terinstall. Jalankan ./install.sh sekarang."; exit 1; }
    command -v git > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Git belum terinstall. Jalankan ./install.sh sekarang."; exit 1; }
    if [ $(ls /dev/urandom >/dev/null; echo $?) == "1" ]; then
        echo "/dev/urandom tidak ditemukan!"
    exit 1
fi
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\r\e[0m[\e[1;32m%-${barlength}s\e[0m]\e[00m" "${bar:0:n}"
        printf "  \e[1;77mLOADING...!\e[0m "
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
banner(){
    echo
    echo
    printf "\e[0;31m█▀▀▀▄ \e[0;33m█▀▀▀█ \e[0;34m█▀▀▀█ \e[0;32m█   █ \e[0;36m█▀▀▀█  \e[0;35m█▀▀▀▀ \e[0;37m█   █ █▀▀▀▀ █    █  \n"
    printf "\e[0;31m█▀▀▀▄ \e[0;33m█▀▀▀█ \e[0;34m█▀▀▀▀ \e[0;32m█   █ \e[0;36m█   █  \e[0;35m▀▀▀▀█ \e[0;37m█▀▀▀█ █▀▀▀  █    █  \n"
    printf "\e[0;31m▀   ▀ \e[0;33m▀   ▀ \e[0;34m▀     \e[0;32m▀▀▀▀▀ \e[0;36m▀   ▀  \e[0;35m▀▀▀▀▀ \e[0;37m▀   ▀ ▀▀▀▀▀ ▀▀▀▀ ▀▀▀▀\n"
}
template(){
    printf "\n\e[0;1;100;77;m[         Rapunshell, My Github: @stepbystepexe          ]\e[0m\n"
}
menu(){
    printf "\n"
    printf "\e[0m[\e[1;96;2m01\e[0m] \e[1;77mAnonymous     \e[0m[\e[1;96;2m10\e[0m] \e[1;77mDdosattack     \e[0m[\e[1;96;2m19\e[0m] \e[1;77mMusicplayer\n"
    printf "\e[0m[\e[1;96;2m02\e[0m] \e[1;77mBlackHydra    \e[0m[\e[1;96;2m11\e[0m] \e[1;77mSpoofing       \e[0m[\e[1;96;2m20\e[0m] \e[1;77mX-Music\n"
    printf "\e[0m[\e[1;96;2m03\e[0m] \e[1;77mPhidingGo     \e[0m[\e[1;96;2m12\e[0m] \e[1;77mGrabspams      \e[0m[\e[1;96;2m21\e[0m] \e[1;77mApkdown\n"
    printf "\e[0m[\e[1;96;2m04\e[0m] \e[1;77mSocialFish    \e[0m[\e[1;96;2m13\e[0m] \e[1;77mSpamerlife     \e[0m[\e[1;96;2m22\e[0m] \e[1;77mJdwlsholat\n"
    printf "\e[0m[\e[1;96;2m05\e[0m] \e[1;77mStepbystep    \e[0m[\e[1;96;2m14\e[0m] \e[1;77mTebasindex     \e[0m[\e[1;96;2m23\e[0m] \e[1;77mJamalarm\n"
    printf "\e[0m[\e[1;96;2m06\e[0m] \e[1;77mTorattacker   \e[0m[\e[1;96;2m15\e[0m] \e[1;77mThefacesite    \e[0m[\e[1;96;2m24\e[0m] \e[1;77mUseragent\n"
    printf "\e[0m[\e[1;96;2m07\e[0m] \e[1;77mDarkroom      \e[0m[\e[1;96;2m16\e[0m] \e[1;77mExstrakey      \e[0m[\e[1;96;2m25\e[0m] \e[1;77mQuotes\n"
    printf "\e[0m[\e[1;96;2m08\e[0m] \e[1;77mFacetool      \e[0m[\e[1;96;2m17\e[0m] \e[1;77mCompilers      \e[0m[\e[1;96;2m26\e[0m] \e[1;77mMyBlog\n"
    printf "\e[0m[\e[1;96;2m09\e[0m] \e[1;77mMultiface     \e[0m[\e[1;96;2m18\e[0m] \e[1;77mCalculator     \e[0m[\e[1;96;2m27\e[0m] \e[1;77mJavaCode\n"
    echo
    printf "\e[0m[\e[1;93m&\e[0m] LISENSI\n"
    printf "\e[0m[\e[1;94m#\e[0m] Informasi\n"
    printf "\e[0m[\e[1;92m*\e[0m] Perbarui\n"
    printf "\e[0m[\e[1;91m-\e[0m] Keluar\n"
    echo
    read -p $'\e[0m(\e[105;77;1m/\e[0m) \e[1;77mMasukan opsi: \e[0m\en' option
        if [[ $option == 01 || $option == 1 ]]; then
        load
        echo
        cd tools/Anonymous
        python3 anonymous.py
            elif [[ $option == 02 || $option == 2 ]]; then
            load
            echo
            cd tools/BlackHydra
            python3 blackhydra.py
                elif [[ $option == 03 || $option == 3 ]]; then
                load
                echo
                cd tools/PhisingGo
                bash phisinggo.sh
                    elif [[ $option == 04 || $option == 4 ]]; then
                    load
                    echo
                    cd tools/SocialFish
                    bash torattack.sh
                        elif [[ $option == 05 || $option == 5 ]]; then
                        load
                        echo
                        cd tools/Stepbystep
                        bash stepbystep.sh
                    elif [[ $option == 06 || $option == 6 ]]; then
                    load
                    echo
                    cd tools/Torattacker
                    bash torattacker.sh
                elif [[ $option == 07 || $option == 7 ]]; then
                load
                echo
                cd tools/Darkroom
                python2 darkroom.py
            elif [[ $option == 08 || $option == 8 ]]; then
            load
            echo
            cd tools/Facetool
            python2 facetool.py
        elif [[ $option == 09 || $option == 9 ]]; then
        load
        echo
        cd tools/Multiface
        python2 multiface.py
    elif [[ $option == 10 ]]; then
    load
    echo
    cd tools/Ddosattack
    python2 ddosattack.py
        elif [[ $option == 11 ]]; then
        load
        echo
        cd tools/Spoofing
        python2 spoofing.py
            elif [[ $option == 12 ]]; then
            load
            echo
            cd tools/Grabspams
            python3 grabspams.py
            elif [[ $option == 13 ]]; then
            load
            echo
                cd tools/Spamerlife
                bash spamerlife.sh
                    elif [[ $option == 14 ]]; then
                    load
                    echo
                    cd tools/Tebasindex
                    bash tebasindex.sh
                        elif [[ $option == 15 ]]; then
                        load
                        echo
                        cd tools/Thefacesite
                        python2 thetacesite.py
                    elif [[ $option == 16 ]]; then
                    load
                    echo
                    cd tools/Exstrakey
                    python3 exstrakey.py
                elif [[ $option == 17 ]]; then
                load
                echo
                cd tools/Compilers
                python2 compilers.py
            elif [[ $option == 18 ]]; then
            load
            echo
            cd tools/Calculator
            python2 calculator.py
        elif [[ $option == 19 ]]; then
        load
        echo
        cd tools/Musicplayer
        python3 musicplayer.py
    elif [[ $option == 20 ]]; then
    load
    echo
    cd tools/X-Music
    python3 x-music.py
        elif [[ $option == 21 ]]; then
        load
        echo
        cd tools/Apkdown
        python3 apkdown.py
            elif [[ $option == 22 ]]; then
            load
            echo
            cd tools/Jdwlsholat
            python3 jdwlsholat.py
                elif [[ $option == 23 ]]; then
                load
                echo
                cd tools/Jamalarm
                python3 jamalarm.py
                    elif [[ $option == 24 ]]; then
                    load
                    echo
                    cd tools/Useragent
                    python3 useragent.py
                        elif [[ $option == 25 ]]; then
                        load
                        echo
                        cd tools/Quotes
                        python quotes.py
                    elif [[ $option == 26 ]]; then
                    load
                    echo
                    cd tools/MyBlog
                    ls
                elif [[ $option == 27 ]]; then
                load
                echo
                cd tools/JavaCode
                ls
            elif [[ $option == '&' ]]; then
            echo
            nano LICENSE
            echo
            clearscreen
            banner
            template
            menu
            elif [[ $option == '#' ]]; then
            echo
            informasi
            echo
            elif [[ $option == '*' ]]; then
            echo
            git pull origin master
            echo
            read -p $'\e[0m[\e[32m Tekan Enter \e[0m]'
            clearscreen
            banner
            template
            menu
            elif [[ $option == '-' ]]; then
            echo
            printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKeluar dari program!\n\e[0m"
            echo
            exit 1
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
        clearscreen
        banner
        template
        menu
    fi
}
informasi(){
clear
printf "\n\e[0;1;100;77;m[         RapunShell, My Github: @stepbystepexe          ]\e[0m\n"
toilet -f smslant 'RapunShell'
printf "
Nama        : RapunShell
Versi       : 2.4 (Update: 10 Juli 2020, 2:30 PM)
Tanggal     : 30 Januari 2019
Author      : Nedi Senja
Tujuan      : Sengaja di encrypt biar simpel
              kumpulan tool stepbystepexe
Terimakasih : Allah SWT.
              FR13NDS, & seluruh
              manusia seplanet bumi
NB          : Manusia gax ada yang sempurna
              sama kaya tool ini.
              Silahkan laporkan kritik atau saran
              Ke - Email: d_q16x@outlook.co.id
                 - WhatsApp: https://tinyurl.com/wel4alo

[ \e[4mGunakan tool ini dengan bijak \e[0m]\n"
sleep 1
read -p $'\n\n\e[0m[ Tekan Enter ]' opt
    if [[ $opt = '' ]]; then
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
