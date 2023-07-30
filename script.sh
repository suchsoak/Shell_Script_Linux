#!/bin/bash/
# [[ "$OSTYPE" == "linux-gnu"*
# || [ "$(OSTYPE)" == "linux-gnu" ] || [ "GNU/Linux" ]

echo
echo -e "\e[31m------------------------- | Github: https://github.com/suchsoak | -------------------------\e[0m"
echo
sleep 7 > /dev/null

clear

echo
echo -e "\e[31m------------------------- | lsb-release | -------------------------\e[0m"
echo

sleep 5 > /dev/null

sudo pacman -S lsb-release --noconfirm

clear

sudo apt install lsb-release -y

clear

sudo dnf install redhat-lsb-core -y

clear

if [ "$(lsb_release -si)" == "Debian" ] || [ "$(lsb_release -si)" == "Ubuntu" ] || [ "$(lsb_release -si)" == "Linuxmint" ] || [ "$(lsb_release -si)" == "kali" ]; then

echo
echo -e "\e[31m------------------------- | PING | -------------------------\e[0m"
echo

    if ping -c 3 www.google.com; then
    echo
    else
        echo "Internet not connected"
    fi

sleep 3 > /dev/null

clear

# echo
# echo "\e[31m-------------------------| DISK | -------------------------\e[0m"
# echo

#     if sudo fsck -A /dev/sda; then
#     echo
#     echo
#     else
#         echo "DISK ERROR"
#     fi

# sleep 2 > /dev/null

# clear

echo
echo -e "\e[35m------------------------- | UPDATE | -------------------------\e[0m"
echo

sudo apt update -y

sleep 5 > /dev/null

clear

echo
echo -e "\e[90m------------------------- | PACKAGES |-------------------------\e[0m"
echo

sleep 4 > /dev/null

sudo apt install make -y
sudo apt install curl -y
sudo apt install wget -y
sudo apt install git -y
sudo apt install vim -y
sudo apt install net-tools -y
sudo apt install openssh -y
sudo apt install neofetch -y
sudo apt install inxi -y
sudo apt install git -y
sudo apt install smartmontools -y

echo
echo
echo

clear

neofetch

sleep 4 > /dev/null

clear

echo
echo -e "\e[90m------------------------- | Programming language | -------------------------\e[0m"
echo

sleep 5 > /dev/null

clear

echo
echo -e "\e[34m------------------------- | Gcc G++ |-------------------------\e[0m"
echo  

sleep 4 > /dev/null

sudo apt-get install build-essential gcc g++ -y

clear

sleep 3 > /dev/null

echo
echo -e "\e[32m------------------------- | Nodejs |-------------------------\e[0m"
echo

sleep 3 > /dev/null

sudo apt install nodejs -y

clear

echo
echo -e "\e[34m------------------------- | Python | -------------------------\e[0m"
echo

sleep 3 > /dev/null

sudo apt install python3 python-pip  -y

clear

echo
echo -e "\e[31m------------------------- | Ruby | -------------------------\e[0m"
echo

sleep 3 > /dev/null

sudo apt install ruby -y

echo
echo -e "\e[0m------------------------- | Java | -------------------------\e[0m"
echo

sudo apt update -y

sleep 5 > /dev/null

sudo apt install default-jdk -y
sudo apt install default-jre -y

clear

echo
echo -e "\e[0m------------------------- | SQL | -------------------------\e[0m"
echo

sleep 3 > /dev/null

sudo apt-get install mysql-server -y

sudo apt-get install postgresql -y


sleep 3 > /dev/null

clear

echo
echo -e "\e[34m------------------------- | VISUAL CODE STUDIO | -------------------------"
echo

sleep 3 > /dev/null

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update -y
sudo apt-get install code -y

clear

echo
echo -e "\e[33m------------------------- | BRAVE BROWSER | -------------------------"
echo

sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

clear

 elif [ "$(lsb_release -si)" == "Arch" ] || [ "$(lsb_release -a)" == "Arch Linux" ]; then
    echo
    echo -e "\e[31m------------------------- | PING | -------------------------\e[0m"
    echo
    echo

        if ping -c 3 www.google.com; then
        echo
        else
            echo "Internet not connected"
        fi

    sleep 3 > /dev/null

    clear

    echo
    echo -e "\e[35m------------------------- | UPDATE | -------------------------\e[0m"
    echo

    sudo pacman -Sy --noconfirm
    clear

    echo
    echo -e "\e[90m------------------------- | PACKAGES |-------------------------\e[0m"
    echo

    sudo pacman -Sy curl wget git vim make net-tools wireless_tools xdg-utils openssh neofetch inxi git smartmontools --noconfirm

    echo
    echo

    neofetch

    sleep 6 > /dev/null

    clear
    
    echo
    echo -e "\e[90m------------------------- | Programming language | -------------------------\e[0m"
    echo

    sleep 5 > /dev/null

    echo
    echo -e "\e[34m------------------------- | Gcc G++ |-------------------------\e[0m"
    echo  


    sleep 4 > /dev/null

    sudo pacman -S gcc g++ --noconfirm

    sleep 4 > /dev/null

    clear

    echo
    echo -e "\e[32m------------------------- | Nodejs |-------------------------\e[0m"
    echo

    sudo pacman -S nodejs --noconfirm

    sleep 4 > /dev/null

    clear

    echo
    echo -e "\e[35m------------------------- | Lua | -------------------------\e[0m"
    echo

    sleep 4 > /dev/null

    sudo pacman -S lua --noconfirm

    sleep 4 > /dev/null

    clear

    echo
    echo -e "\e[34m------------------------- | Python | -------------------------\e[0m"
    echo

    sleep 3 > /dev/null

    clear

    sudo pacman -S python3 python-pip --noconfirm

    sleep 4 > /dev/null

    echo
    echo -e "\e[31m-------------------------| Ruby | -------------------------\e[0m"
    echo

    sleep 3 > /dev/null

    sudo pacman -S ruby  --noconfirm

    sudo pacman -Sy --noconfirm

    echo
    echo -e "\e[0m------------------------- | Java | -------------------------\e[0m"
    echo

    sudo apt update -y

    sleep 5 > /dev/null

    sudo pacman -S jre-openjdk --noconfirm

    sleep 3 > /dev/null
    clear


    echo
    echo -e "\e[0m------------------------- | SQL | -------------------------\e[0m"
    echo

    sudo pacman -S mysql --noconfirm

    clear

    echo
    echo -e "\e[34m------------------------- | VISUAL CODE STUDIO | -------------------------"
    echo

    sleep 3 > /dev/null
    
    sudo pacman -S code --noconfirm

    clear

    echo
    echo -e "\e[33m------------------------- | BRAVE BROWSER | -------------------------"
    echo

    sleep 3 > /dev/null

    sudo pacman -S git --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay

    sleep 4 > /dev/null

    makepkg -si --noconfirm
    yay -S brave-bin --noconfirm
    yay -S brave-beta-bin --noconfirm
    yay -S brave-nightly-bin --noconfirm
    yay -Sy --noconfirm

  elif [ "$(lsb_release -si)" == "Fedora" ]; then

        echo
        echo -e "\e[31m------------------------- | PING | -------------------------\e[0m"
        echo
        echo

            if ping -c 3 www.google.com; then
            echo
            else
                echo "Internet not connected"
            fi

        sleep 3 > /dev/null

        clear

        echo
        echo -e "\e[35m------------------------- | UPDATE | -------------------------\e[0m"
        echo

        sudo dnf update -y

        clear
        sleep 4 > /dev/null

        echo
        echo -e "\e[90m------------------------- | PACKAGES |-------------------------\e[0m"
        echo

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
    
        echo
        echo

        neofetch

        sleep 6 > /dev/null

        clear
        
        echo
        echo -e "\e[90m------------------------- | Programming language | -------------------------\e[0m"
        echo

        sleep 5 > /dev/null

        echo
        echo -e "\e[34m------------------------- | Gcc G++ |-------------------------\e[0m"
        echo  


        sleep 4 > /dev/null

        sudo dnf install gcc g++ -y

        sleep 4 > /dev/null

        clear

        echo
        echo -e "\e[32m------------------------- | Nodejs |-------------------------\e[0m"
        echo

        sudo dnf install nodejs -y

        sleep 4 > /dev/null

        clear

        echo
        echo -e "\e[35m------------------------- | Lua | -------------------------\e[0m"
        echo

        sleep 4 > /dev/null

        sudo dnf install lua -y

        sleep 4 > /dev/null

        clear

        echo
        echo -e "\e[34m------------------------- | Python | -------------------------\e[0m"
        echo

        sleep 3 > /dev/null

        clear

        sudo dnf install python3 python-pip -y

        sleep 4 > /dev/null

        echo
        echo -e "\e[31m------------------------- | Ruby | -------------------------\e[0m"
        echo

        sleep 3 > /dev/null

        sudo dnf install ruby  -y

        sudo dnf install update -y

        clear

        echo
        echo -e "\e[0m------------------------- | Java | -------------------------\e[0m"
        echo

        sleep 5 > /dev/null

        sudo dnf install default-jdk -y
        sudo dnf install default-jre -y

        clear

        echo
        echo -e "\e[0m------------------------- | SQL | -------------------------\e[0m"
        echo

        sleep 3 > /dev/null

        sudo dnf install mysql -y

        clear

        echo
        echo -e "\e[34m------------------------- | VISUAL CODE STUDIO | -------------------------"
        echo

        sleep 3 > /dev/null
        
        sudo dnf install code -y

        clear

        echo
        echo -e "\e[33m------------------------- | BRAVE BROWSER | -------------------------"
        echo

        sleep 3 > /dev/null
        sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
        sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
        sudo dnf update
        sudo dnf install brave-browser
        

else
    echo "Operating system not supported by this script."
fi
