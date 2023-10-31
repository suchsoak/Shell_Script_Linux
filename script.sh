#!/bin/bash/
echo 
echo
echo "  _________/\            __   __                         __         __   "
echo " /   _____/  |__   ____ |  | |  |    ______ ____ _______|__|_____ _/  |_ "
echo " \_____  \|  |  \_/ __ \|  | |  |   /  ___// ___\\_  __ \  |____ \\   __\ "
echo " /        \      \  ___/_  |__  |__ \___ \\  \___ |  | \/  |  |_\ \|  |  "
echo "/_______  /___|  /\___  /____/____//____  \\___  /|__|  |__|   ___/|__|  "
echo "        \/     \/     \/                \/     \/          |__|"
echo "                   Github: https://github.com/suchsoak                   "   

sleep 3 > /dev/null

if [ "$(lsb_release -si)" == "Debian" ] || [ "$(lsb_release -si)" == "Ubuntu" ] || [ "$(lsb_release -si)" == "Linuxmint" ] || [ "$(lsb_release -si)" == "kali" ]; then

clear

sudo apt update -y

clear

echo
echo Packages
echo
sleep 3 > /dev/null
clear

sudo apt install make -y
sudo apt install curl -y
sudo apt install wget -y
sudo apt install git -y
sudo apt install vim -y
sudo apt install net-tools -y
sudo apt install ssh -y
sudo apt install neofetch -y
sudo apt install inxi -y
sudo apt install git -y
sudo apt install smartmontools -y
sudo apt install docker.io -y

clear

neofetch

sleep 4 > /dev/null

clear

echo
echo Gcc and dependencies
echo
sleep 3 > /dev/null
clear
sudo apt-get install build-essential gcc g++ -y

sudo apt install nodejs -y

clear
echo
echo Python
echo
sleep 3 > /dev/null
sudo apt install python3 python-pip  -y
sudo apt install pip -y
python -m pip install --upgrade pip

clear

echo
echo Ruby
echo
sleep 3 > /dev/null
sudo apt install ruby -y
clear
sudo apt update -y
clear
echo
echo Java
echo
sleep 3 > /dev/null
sudo apt install default-jdk -y
sudo apt install default-jre -y

clear

echo
echo Sql
echo
sleep 3 > /dev/null

sudo apt-get install mysql-server -y

sudo apt-get install postgresql -y

clear

echo
echo Visual Studio Code
echo
sleep 3 > /dev/null
clear

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update -y
sudo apt install code -y

clear

echo
echo Brave
echo
sleep 3 > /dev/null
clear

sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

clear

echo
echo Updates
echo
sleep 3 > /dev/null
clear

sudo dpkg --configure -a
sudo apt install -f -y 
sudo apt update && sudo apt upgrade -y
sudo apt reinstall libwacom-common && sudo apt reinstall libwacom-bin -y
sudo apt-get autoclean -y &&  sudo apt-get clean -y && sudo apt-get autoremove -y && sudo apt-get update --fix-missing -y && sudo apt-get upgrade --fix-missing -y
sudo apt-get update && sudo apt-get upgrade -y

clear

echo "Script Complete!"

 elif [ "$(lsb_release -si)" == "Arch" ] || [ "$(lsb_release -a)" == "Arch Linux" ]; then

    clear

    sudo pacman -Sy --noconfirm
    clear

    sudo pacman -Sy curl wget git vim make net-tools wireless_tools nano xdg-utils openssh neofetch inxi git smartmontools --noconfirm
    sudo pacman -S docker --noconfirm

    clear
    neofetch

    sleep 3 > /dev/null

    clear
  
    sudo pacman -S gcc g++ --noconfirm

    sleep 1 > /dev/null

    clear

    sudo pacman -S nodejs --noconfirm

    sleep 1 > /dev/null

    clear

    sudo pacman -S lua --noconfirm

    sleep 4 > /dev/null

    clear

    sudo pacman -S python3 python-pip --noconfirm
    python -m pip install --upgrade pip

    sleep 4 > /dev/null

    sudo pacman -S ruby  --noconfirm

    sudo pacman -Sy --noconfirm
    
    clear

    sudo pacman -S jre-openjdk --noconfirm

    clear

    sudo pacman -S mysql --noconfirm

    clear
    
    sudo pacman -S code --noconfirm

    clear

    sudo pacman -S git --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay

    makepkg -si --noconfirm
    yay -S brave-bin --noconfirm
    yay -S brave-beta-bin --noconfirm
    yay -S brave-nightly-bin --noconfirm
    yay -Sy --noconfirm

    clear
    echo "Scirpt Complete!"

  elif [ "$(lsb_release -si)" == "Fedora" ]; then

        sleep 3 > /dev/null

        clear

        sudo dnf check-update
        sudo dnf update -y

        clear

        sudo dnf install git -y
        sudo dnf install neofetch -y
        sudo dnf install curl -y
        sudo dnf install wget -y
        sudo dnf install vim -y
        sudo dnf install net-tools -y
        sudo dnf install wireless_tools -y
        sudo dnf install xdg-utils -y
        sudo dnf install openssh -y 
        sudo dnf install inxi -y
        sudo dnf install smartmontools -y
        sudo dnf install docker -y

        clear

        neofetch

        sleep 3 > /dev/null

        clear

        sudo dnf install gcc g++ -y
        clear

        sudo dnf install nodejs -y
        clear

        sudo dnf install lua -y
        clear

        sudo dnf install python3 python-pip -y
        python -m pip install --upgrade pip
        clear
  
        sudo dnf install ruby  -y
        gem update
        clear

        sudo dnf install update -y

        sudo dnf install default-jdk -y
        sudo dnf install default-jre -y
        sudo dnf install mysql -y
        sudo dnf install code -y
        sleep 3 > /dev/null
        sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
        sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
        sudo dnf update
        sudo dnf install brave-browser -y
        
        clear
        echo
        echo "Script Complet!"
        echo
  elif [ "$(uname -o)" == "Android" ]; then

    clear

    sudo pkg update 

    clear

    echo
    echo Packages
    echo
    sleep 3 > /dev/null
    clear

     pkg install make -y
     pkg install curl -y
     pkg install wget -y
     pkg install git -y
     pkg install vim -y
     pkg install net-tools -y
     pkg install ssh -y
     pkg install neofetch -y
     pkg install inxi -y
     pkg install git -y
     pkg install smartmontools -y
     pkg install docker.io -y

    clear

    neofetch

    sleep 4 > /dev/null

    clear

    echo
    echo Gcc and dependencies
    echo
    sleep 3 > /dev/null
    clear
     pkg install build-essential gcc g++ -y

     pkg install nodejs -y

    clear
    echo
    echo Python
    echo
    sleep 3 > /dev/null
     pkg install python3 python-pip  -y
     pkg install pip -y
    python -m pip install --upgrade pip

    clear

    echo
    echo Ruby
    echo
    sleep 3 > /dev/null
     pkg install ruby -y
    clear
     pkg update -y
    clear
    echo
    echo Java
    echo
    sleep 3 > /dev/null
     pkg install default-jdk -y
     pkg install default-jre -y
    clear
    echo
    echo Sql
    echo
    sleep 3 > /dev/null
     pkg install mysql-server -y
     pkg install postgresql -y
    clear
    echo
    echo "Script Complet!"
    echo

else
    echo "Operating system not supported by this script."
fi
