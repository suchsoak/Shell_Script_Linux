#!/bin/bash/
clear
echo 
echo 
packscript=$(cat << "script"

 ___  ___   ___  _  __ ___   ___  ___  ___  ___  _____ 
| _ \/   \ / __|| |/ // __| / __|| _ \|_ _|| _ \|_   _|
|  _/| - || (__ |   < \__ \| (__ |   / | | |  _/  | |  
|_|  |_|_| \___||_|\_\|___/ \___||_|_\|___||_|    |_|  

[1] Normal Packages
[2] With Hackcing tools (nmap, aicrack-ng...)
[3] Only Hacking tools
[4] Update

Github: github.com/suchsoak
BY: suchsoak
V:1.0.3

script
)

echo "$packscript"

op=0

while [[ $op -ne 1 && $op -ne 2 && $op -ne 3 && $op -ne 4 ]]
do  echo    
    read -p "Select an option [1-4]: " op
    echo
done

case $op in

1)

sleep 3 > /dev/null

if [ "$(lsb_release -si)" == "Debian" ] || [ "$(lsb_release -si)" == "Ubuntu" ] || [ "$(lsb_release -si)" == "Linuxmint" ] || [ "$(lsb_release -si)" == "kali" ]; then
clear
linuxs=$(cat << "linux"
+------------------------------+
|ooooooooooooo+. .:oooooooooooo|
|ooooooooooooo: . .oooooooooooo|
|oooooooooooo+:++~ +ooooooooooo|
|ooooooooooo+~oooo~ +oooooooooo|
|ooooooooooo~+ooooo .oooooooooo|
|oooooooooo+~+oooo+ .+ooooooooo|
|oooooooo+++:~:++::~:+ooooooooo|
|oooooooooo++++:::+++oooooooooo|
+------------------------------+
linux
)

echo "$linuxs"
sleep 2 > /dev/null
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
sudo apt install htop -y
sudo apt install net-tools -y
sudo apt install ssh -y
sudo apt install neofetch -y
sudo apt install inxi -y
sudo apt install git -y
sudo apt install tar -y
sudo apt install smartmontools -y
sudo apt install docker.io -y
sudo apt instal snap -y

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
sudo apt install python3 -y
sudo apt install pip -y
python3 -m pip install --upgrade pip

clear

echo
echo Ruby
echo
sleep 3 > /dev/null
sudo apt install ruby -y
sudo apt install build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev -y
sudo gem update --system
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
code=$(cat << "visual"
        +------------------------------+
        |ooooooooooooooooooo+:..++ooooo|
        |ooooooooooooooooo+:.   ...::++|
        |ooooooooooooooo+.      ... ..:|
        |oo+++oooooooo:.       .......:|
        |+:  ..:+oo+:        :+:......:|
        |o+:.    ...      .:ooo:.......|
        |ooo+:. . .    .:+ooooo:.......|
        |ooo+:     .   .+oooooo+... ..:|
        |o+.     ...  .  .:+ooo:......:|
        |+.    .+oo+:.  .   .:+:.. ....|
        |oo+::ooooooo+:..    ..........|
        |ooooooooooooooo+:. .  .......:|
        |ooooooooooooooooo+:.  .....:+o|
        |ooooooooooooooooooo+:..:++oooo|
        +------------------------------+
visual
)

clear
echo "$code"
sleep 2 > /dev/null

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

brave=$(cat << "browser"
        +------------------------------+
        |ooo=o=oo=o=::::::::=ooooooooo=|
        |oooooo==::..       .~::=o=oooo|
        |o=ooo:...::~::::~~~:~  .~oo=oo|
        |ooooo~.~=oo==oooo==oo:. .=ooo=|
        |oooo=..=oooo::oo~:=ooo~ .=ooo=|
        |ooooo~.~=ooo:=oo~:ooo~  .ooooo|
        |=oooo=...~oo==::=ooo~   =ooooo|
        |ooo=oo~..~ooo=~~=oo=   ~oo=ooo|
        |oo=ooo=...~~==oo=:.   .=oooooo|
        |ooooooo:~...~:o=~.    ~oooo=oo|
        |o=ooooo=:~~....     .:oo=oooo=|
        |ooo=oooooo=:~... ~:=oooooooooo|
        |ooooooooooooo=::==oooooooo=o=o|
        +------------------------------+
browser
)
echo "$brave"
sleep 3 > /dev/null

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
 archlinux=$(cat << "arch"
+------------------------------+
|oooooooooooooo~+oooooooooooooo|
|ooooooooooooo+  +ooooooooooooo|
|oooooooooooo+    ooooooooooooo|
|oooooooooooo      oooooooooooo|
|ooooooooooo+~     ~ooooooooooo|
|oooooooooo~~~~     ~oooooooooo|
|ooooooooo~~         ~ooooooooo|
|oooooooo~            ~oooooooo|
|ooooooo        ~       ooooooo|
|ooooo+      ~oooo~      oooooo|
|oooo+       oooooo       ooooo|
|ooo+       ~oooooo      ~~oooo|
|oo+     ~~++oooooo++~     ~+oo|
|o+  ~++ooooooooooooooo++~~  +o|
|+~+oooooooooooooooooooooooo+++|
+------------------------------+
arch
)

echo "$archlinux"
    sleep 3 > /dev/null
    clear
    sudo pacman -Sy --noconfirm
    clear
    sudo pacman -Sy curl wget git vim make net-tools wireless_tools nano xdg-utils openssh neofetch inxi git smartmontools --noconfirm
    sudo pacman -S docker --noconfirm
    clear
    neofetch
    sleep 3 > /dev/null
    clear
    sudo pacman -S gcc --noconfirm
    sudo pacman -S curl --noconfirm
    sudo pacman -S htop --noconfirm
    sleep 1 > /dev/null
    clear
    sudo pacman -S nodejs --noconfirm
    sleep 1 > /dev/null
    clear
    sudo pacman -S lua --noconfirm
    sleep 4 > /dev/null
    clear
    sudo pacman -S python3 python-pip --noconfirm
    sudo python -m pip install --upgrade pip --break-system-packages
    sleep 4 > /dev/null
    sudo pacman -S ruby  --noconfirm
    sudo gem update --system
    sudo pacman -Sy --noconfirm
    clear
    sudo pacman -S jre-openjdk --noconfirm
    clear
    sudo pacman -S mysql --noconfirm
    clear
        code=$(cat << "visual"
        +------------------------------+
        |ooooooooooooooooooo+:..++ooooo|
        |ooooooooooooooooo+:.   ...::++|
        |ooooooooooooooo+.      ... ..:|
        |oo+++oooooooo:.       .......:|
        |+:  ..:+oo+:        :+:......:|
        |o+:.    ...      .:ooo:.......|
        |ooo+:. . .    .:+ooooo:.......|
        |ooo+:     .   .+oooooo+... ..:|
        |o+.     ...  .  .:+ooo:......:|
        |+.    .+oo+:.  .   .:+:.. ....|
        |oo+::ooooooo+:..    ..........|
        |ooooooooooooooo+:. .  .......:|
        |ooooooooooooooooo+:.  .....:+o|
        |ooooooooooooooooooo+:..:++oooo|
        +------------------------------+
visual
)
        clear
        echo "$code"
        sleep 2 > /dev/null
    sudo pacman -S code --noconfirm
    clear
        brave=$(cat << "browser"
        +------------------------------+
        |ooo=o=oo=o=::::::::=ooooooooo=|
        |oooooo==::..       .~::=o=oooo|
        |o=ooo:...::~::::~~~:~  .~oo=oo|
        |ooooo~.~=oo==oooo==oo:. .=ooo=|
        |oooo=..=oooo::oo~:=ooo~ .=ooo=|
        |ooooo~.~=ooo:=oo~:ooo~  .ooooo|
        |=oooo=...~oo==::=ooo~   =ooooo|
        |ooo=oo~..~ooo=~~=oo=   ~oo=ooo|
        |oo=ooo=...~~==oo=:.   .=oooooo|
        |ooooooo:~...~:o=~.    ~oooo=oo|
        |o=ooooo=:~~....     .:oo=oooo=|
        |ooo=oooooo=:~... ~:=oooooooooo|
        |ooooooooooooo=::==oooooooo=o=o|
        +------------------------------+
browser
)
    echo "$brave"
    sleep 3 > /dev/null
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
clear
  fedoralinux=$(cat << "fedo"
    +------------------------------+
    |                              |
    |                     .        |
    |                 ..           |
    |              .oooooo:        |
    |             :oo:...oo:       |
    |             :oo    :o:.      |
    |        .... :oo...           |
    |      ::oooo.ooooo:.          |
    |     oo:...  :oo.             |
    |    .oo:     ooo              |
    |    .:oo:...:oo:              |
    |      :::ooo::.               |
    |          ..        .         |
    |                              |
    +------------------------------+
fedo
)

        echo "$fedoralinux"
        sleep 3 > /dev/null

        clear

        sudo dnf check-update
        sudo dnf upgrade --refresh -y
        sudo dnf update -y
        clear

        sudo dnf install git -y
        sudo dnf install neofetch -y
        sudo dnf install curl -y
        sudo dnf install wget -y
        sudo dnf install htop -y
        sudo dnf install vim -y
        sudo dnf install snapd -y
        sudo dnf install net-tools -y
        sudo dnf install iw -y
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
        sudo dnf install libxml2-2.10.4-3.fc39.x86_64 -y
        sudo gem update --system
        clear
        sudo dnf install update -y
        sudo dnf install java-latest-openjdk -y
        sudo dnf install mysql -y
        clear
        code=$(cat << "visual"
        +------------------------------+
        |ooooooooooooooooooo+:..++ooooo|
        |ooooooooooooooooo+:.   ...::++|
        |ooooooooooooooo+.      ... ..:|
        |oo+++oooooooo:.       .......:|
        |+:  ..:+oo+:        :+:......:|
        |o+:.    ...      .:ooo:.......|
        |ooo+:. . .    .:+ooooo:.......|
        |ooo+:     .   .+oooooo+... ..:|
        |o+.     ...  .  .:+ooo:......:|
        |+.    .+oo+:.  .   .:+:.. ....|
        |oo+::ooooooo+:..    ..........|
        |ooooooooooooooo+:. .  .......:|
        |ooooooooooooooooo+:.  .....:+o|
        |ooooooooooooooooooo+:..:++oooo|
        +------------------------------+
visual
)
        clear
        echo "$code"
        sleep 2 > /dev/null
        sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
        sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
        sudo dnf install code -y
        sudo dnf check-update
        sudo dnf update -y
        sudo dnf install code
        clear
        brave=$(cat << "browser"
        +------------------------------+
        |ooo=o=oo=o=::::::::=ooooooooo=|
        |oooooo==::..       .~::=o=oooo|
        |o=ooo:...::~::::~~~:~  .~oo=oo|
        |ooooo~.~=oo==oooo==oo:. .=ooo=|
        |oooo=..=oooo::oo~:=ooo~ .=ooo=|
        |ooooo~.~=ooo:=oo~:ooo~  .ooooo|
        |=oooo=...~oo==::=ooo~   =ooooo|
        |ooo=oo~..~ooo=~~=oo=   ~oo=ooo|
        |oo=ooo=...~~==oo=:.   .=oooooo|
        |ooooooo:~...~:o=~.    ~oooo=oo|
        |o=ooooo=:~~....     .:oo=oooo=|
        |ooo=oooooo=:~... ~:=oooooooooo|
        |ooooooooooooo=::==oooooooo=o=o|
        +------------------------------+
browser
)
        echo "$brave"
        sleep 3 > /dev/null
        sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
        sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
        sudo dnf update
        sudo dnf install brave-browser -y
        
        clear
        echo
        echo "Script Complet!"
        echo

  elif [ "$(lsb_release -si)" == "openSUSE" ]; then

clear 
opensuse=$(cat << "suse"

+----------------------------------------+
|                                        |
|             ==o========oo=             |
|         =o==================o          |
|       ==========================       |
|      ====o  =====================      |
|         =             =o===========    |
|                    =o===oo=o========   |
|                   ==o===o==  =======   |
|                  ===  === ==  =======  |
|                  ===   = ===  ======o  |
|             ====  ===o=o===    =====o  |
|             ========oooo=    =o======  |
|                ========ooo==========   |
|                     =oo==oo=========   |
|                           =========    |
|       =====oo=====oo=============      |
|       ==========================       |
|          ====================          |
|             ==============             |
|                                        |
+----------------------------------------+


suse
)

echo "$opensuse"

sleep 3 > dev/null

sudo zypper install -y make 
sudo zypper install -y curl 
sudo zypper install -y wget 
sudo zypper install -y git 
sudo zypper install -y vim 
sudo zypper install -y net-tools 
sudo zypper install -y openssh 
sudo zypper install -y neofetch 
sudo zypper install -y inxi 
sudo zypper install -y smartmontools 
sudo zypper install -y docker
clear

neofetch

sleep 4 > /dev/null

clear

echo
echo Gcc and dependencies
echo
sleep 3 > /dev/null

clear

sudo zypper install -y  gcc  

clear
echo
echo Java
echo

sudo zypper install -y nodejs 

clear
echo
echo Python
echo

sleep 3 > /dev/null

sudo zypper install -y python
sudo zypper in -y python3-pip
sudo zypper install -y python3   
python -m pip install --upgrade pip

clear

echo
echo Ruby
echo

sleep 3 > /dev/null
sudo zypper in -y ruby 
sudo gem update --system
clear
sudo zypper -y update 

sleep 3 > /dev/null

clear

echo
echo Sql
echo
sleep 3 > /dev/null

sudo zypper in -y mysql-server 

sudo zypper in -y postgresql 

clear
sudo zypper refresh
sudo zypper verify
sudo zypper update
clear

code=$(cat << "visual"
        +------------------------------+
        |ooooooooooooooooooo+:..++ooooo|
        |ooooooooooooooooo+:.   ...::++|
        |ooooooooooooooo+.      ... ..:|
        |oo+++oooooooo:.       .......:|
        |+:  ..:+oo+:        :+:......:|
        |o+:.    ...      .:ooo:.......|
        |ooo+:. . .    .:+ooooo:.......|
        |ooo+:     .   .+oooooo+... ..:|
        |o+.     ...  .  .:+ooo:......:|
        |+.    .+oo+:.  .   .:+:.. ....|
        |oo+::ooooooo+:..    ..........|
        |ooooooooooooooo+:. .  .......:|
        |ooooooooooooooooo+:.  .....:+o|
        |ooooooooooooooooooo+:..:++oooo|
        +------------------------------+
visual
)
        clear
        echo "$code"

        zypper ar -e -f obs://devel:tools:ide:vscode devel_tools_ide_vscode1
        sudo zypper in -d -y code
        clear
        sudo zypper refresh && sudo zypper update && sudo zypper upgrade -y

        clear
        brave=$(cat << "browser"
        +------------------------------+
        |ooo=o=oo=o=::::::::=ooooooooo=|
        |oooooo==::..       .~::=o=oooo|
        |o=ooo:...::~::::~~~:~  .~oo=oo|
        |ooooo~.~=oo==oooo==oo:. .=ooo=|
        |oooo=..=oooo::oo~:=ooo~ .=ooo=|
        |ooooo~.~=ooo:=oo~:ooo~  .ooooo|
        |=oooo=...~oo==::=ooo~   =ooooo|
        |ooo=oo~..~ooo=~~=oo=   ~oo=ooo|
        |oo=ooo=...~~==oo=:.   .=oooooo|
        |ooooooo:~...~:o=~.    ~oooo=oo|
        |o=ooooo=:~~....     .:oo=oooo=|
        |ooo=oooooo=:~... ~:=oooooooooo|
        |ooooooooooooo=::==oooooooo=o=o|
        +------------------------------+
browser
)
        echo "$brave"
        sleep 3 > /dev/null
        sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
        sudo rpm --import https://brave-browser-rpm-beta.s3.brave.com/brave-core-nightly.asc
        sudo zypper addrepo --refresh https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
        sudo zypper addrepo --refresh https://brave-browser-rpm-beta.s3.brave.com/x86_64/ brave-browser-beta
        sudo zypper addrepo --refresh https://brave-browser-rpm-nightly.s3.brave.com/x86_64/ brave-browser-nightly
        sudo zypper in -y brave-browser

     clear
     echo
     echo "Script Complet!"
     echo

  elif [ "$(uname -o)" == "Android" ]; then
clear
  android=$(cat << "droid"
+------------------------------+
|                              |
|          == =======          |
|         ==oo=o=ooo==         |
|        ==o=oooooooo==        |
|        oooooooooooooo=       |
|    =o+=oooooooooooooo=+==    |
|   +=oo+=oooooooooooo==ooo+   |
|   +ooo+=oooooooooooo=+oo=+   |
|   +ooo+=ooooooooooooo+ooo+   |
|   =oo=+ooooooooooooo=+====   |
|    == ==ooooooooooooo====    |
|       ==oooo=oo=oo=o=        |
|          =oo=  ooo=          |
|          =oo=  =oo=          |
|          ====  ===           |
+------------------------------+
droid
)

    echo "$android"
    sleep 2 > /dev/null
    clear

    pkg update 
    pkg upgrade -y

    clear

    echo
    echo Packages
    echo
    sleep 3 > /dev/null
    clear
    pkg install make -y
    pkg install yara -y
    pkg install curl -y
    pkg install wget -y
    pkg install git -y
    pkg install git build-essential -y
    pkg install vim -y
    pkg install net-tools -y
    pkg install openssh -y
    pkg install neofetch -y
    pkg install inxi -y
    pkg install libcap-ng -y
    pkg install lvm2 -y
    pkg install mailutils -y
    pkg install nmh -y 
    pkg install tsduck-tools -y
    clear

    neofetch

    sleep 4 > /dev/null

    clear

    echo
    echo Gcc and dependencies
    echo
    sleep 3 > /dev/null
    clear
     pkg install build-essential  -y

    echo
    echo NodeJs
    echo
     pkg install nodejs -y

    clear

    echo
    echo Lua
    echo
     pkg install lua53 -y

    clear
    echo
    echo Python
    echo
    sleep 3 > /dev/null
     pkg install python3 python-pip  -y
    python -m pip install --upgrade pip

    clear

    echo
    echo Ruby
    echo
    sleep 3 > /dev/null
     pkg install ruby -y
     sudo gem update --system
    clear
     pkg update -y
    clear
    echo
    echo Java
    echo
    sleep 3 > /dev/null
    pkg install openjdk-17 -y
    clear
    sleep 4 > /dev/null
    java -version
    clear
    echo
    echo Sql
    echo
    sleep 3 > /dev/null
     pkg install postgresql -y
    clear

nethunter=$(cat << "EOF"        
      ...           
   ...~:+o+        
    ......++::::    
         ~o    :+   
          +:::::.   
              ~:~  
                 .  
 _ __ ____  __    ___                             
| |/ //   \| |   |_ _|       
|   < | - || |__ |   |       
|_|\_\|_|_||____||___|    

    [1] Nethunter Install
    [2] No Install 
EOF
)

echo "$nethunter"

# Declare op
op=0

while [[ $op -ne 1 && $op -ne 2 ]]
do
    read -p "Select an option [1-2]: " op
done

case $op in

1)
    echo "Nethunter Install"
    sleep 1 > /dev/null
    termux-setup-storage
    wget -O install-nethunter-termux https://offs.ec/2MceZWr
    chmod +x install-nethunter-termux
    ./install-nethunter-termux
    sleep 1 >/dev/null
    clear
    nethunter kex passwd
    sleep 1 > /dev/null
    clear
    # Install neofetch if not installed
    if [ -z "$(command -v neofetch)" ]; then
        pkg install -y neofetch
    fi
    neofetch
    ;;

2)
    echo "No Nethunter"
    exit
    ;;  

esac
    echo
    echo -e "\e[31mScript Complet!\e[0m"
    echo
fi
    ;;

2)
# 2) Linux Hacking Tools
cd hacking/ && chmod 777 script2.sh && bash ./script2.sh
;;
3)
# 3) Linux Hacking Tools
cd hacking/ && chmod 777 script3.sh && bash ./script3.sh
;;
4)

git pull

esac
