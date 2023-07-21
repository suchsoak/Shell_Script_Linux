#!/bin/bash/
# [[ "$OSTYPE" == "linux-gnu"*


if [ "$(lsb_release -si)" == "Debian" ] || [ "$(lsb_release -si)" == "Ubuntu" ] || [ "$(OSTYPE)" == "linux-gnu"]; then

echo
echo "-------------------------| UPDATE | -------------------------"
echo

sudo apt update -y
sleep 2 > /dev/null
clear

echo
echo "------------------------- | curl,wget,git,vim,net-tools,neofetch |-------------------------"
echo

sleep 4 > /dev/null

sudo apt install curl wget git vim make net-tools neofetch inxi -y

neofetch

sleep 4 > /dev/null

clear

echo
echo "------------------------- | Python, ruby, C, nodejs... | -------------------------"
echo

sleep 5 > /dev/null

sudo apt-get install build-essential -y
sudo apt install ruby lua5.3 python3 python3-pip nodejs -y

clear

echo
echo "-------------------------VISUAL CODE STUDIO-------------------------"
echo
sleep 3 > /dev/null

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update -y
sudo apt-get install code -y

clear

echo
echo "------------------------- | VISUAL_STUDIO_CODE | -------------------------"
echo
sleep 3 > /dev/null

clear

echo
echo "-------------------------BRAVE BROWSER-------------------------"
echo

sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

clear

echo
echo "------------------------- | BRAVE_BROWSER | -------------------------"
echo


sleep 3 > /dev/null

clear

 elif [ "$(lsb_release -si)" == "Arch" ]; then
    echo
    echo "-------------------------UPDATE-------------------------"
    echo
    sudo pacman -Syu --noconfirm
    clear
    echo
    echo "------------------------- | Pacotes |-------------------------"
    echo

    sudo pacman -Sy curl wget git vim make net-tools --noconfirm
    clear
    echo
    echo "------------------------- | Python, ruby, C, nodejs... | -------------------------"
    echo
    sleep 5 > /dev/null

    sudo pacman -Sy build-essential --noconfirm
    sudo pacman -Sy ruby lua5.3 python3 python3-pip nodejs --noconfirm

    clear

    echo
    echo "-------------------------Baixando Linguagens De Programação-------------------------"
    echo
    sudo pacman -S gcc g++ ruby lua python nodejs --noconfirm
    clear
    echo
    echo "-------------------------VISUAL CODE STUDIO-------------------------"
    echo
    sudo pacman -S code --noconfirm
    clear
    echo
    echo "-------------------------BRAVE BROWSER-------------------------"
    echo
    sudo pacman -S git --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    yay -S brave-bin
    yay -S brave-beta-bin
    yay -S brave-nightly-bin
    echo
    echo "-------------------------BRAVE_BROWSER-------------------------"
    echo
else
    echo "Sistema operacional não compatível com este script."
fi

