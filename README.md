# Shell_Script_Linux
!["Shell"](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

**This is a shell script for you to have everything when formatting your linux**

**This script is under development**

**Before starting script recommended to update the system before**

# Linux
!["Linux"](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
!["Ubuntu"](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
!["LinuxMint"](https://img.shields.io/badge/Linux_Mint-87CF3E?style=for-the-badge&logo=linux-mint&logoColor=white)
!["Kali linux"](https://img.shields.io/badge/Kali_Linux-557C94?style=for-the-badge&logo=kali-linux&logoColor=white)
!["Fedora"](https://img.shields.io/badge/Fedora-294172?style=for-the-badge&logo=fedora&logoColor=white)
!["Debian"](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)
!["Arch linux"](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)

## Install

> with Git

```sh
  git clone https://github.com/suchsoak/Shell_Script_Linux.git
```

```sh
  chmod +X script.sh  
```

### OR

```sh
 chmod 777 script.sh 
```

> [!Note]
> You need install lsb-release for work, see in requirements.txt

## Docker

**Arch Linux**

```sh
   pacman -Sy --noc && pacman -S sudo --noc && pacman -S git --noc && pacman -S nano --noc && sudo pacman -S lsb-release --noc && clear && git clone https://github.com/suchsoak/Shell_Script_Linux.git && cd Shell_Script_Linux && chmod +X script.sh && clear && bash script.sh
```

**Ubuntu - Debian**

```sh
   apt update && apt install git -y && apt install sudo -y && sudo apt insall lsb-release -y && git clone https://github.com/suchsoak/Shell_Script_Linux.git && cd Shell_Script_Linux && chmod 777 script.sh && clear && bash ./script.sh
```

**Fedora Linux**

```sh
   dnf update -y && dnf install git -y && dnf install sudo -y && sudo dnf install redhat-lsb-core -y && git clone https://github.com/suchsoak/Shell_Script_Linux.git && cd Shell_Script_Linux && chmod 777 script.sh && clear && bash ./script.sh  
```

# Termux

!["Android"](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)

>  [!Note]
> For termux i will use "uname"

> Script for Termux still in development

```sh
elif [ "$(uname -o)" == "Android" ]; then
```

## Usage

```sh
  bash script.sh
```
# Packages | Programming language 

```sh            
  curl             | Ruby (gem)
  wget             | Lua
  git              | gcc 
  vim              | g++
  net-tools        | Nodejs
  neofetch         | Python (pip) 
  inxi             | SQL
  smartmontools    | Java
  wireless_tools   
  xdg-utils
  lsb-release
  libwacom-bin
  libwacom-common
  Docker or Docker.io
  rpm (for fedora)
  Visual Code studio
  Brave Browser
```

| Downloads |  Links |
| ------ | ------ |
| VISUAL CODE STUDIO | https://code.visualstudio.com/
| BRAVE BROWSER | https://brave.com/pt-br/download/
|  Python | https://www.python.org/
|  Ruby | https://www.ruby-lang.org/en/
|  Lua | https://www.lua.org/download.html
|  nodejs | https://nodejs.org/en
| Mysql   | https://www.mysql.com/
| Docker   | https://www.docker.com/
| RPM   | https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/RPM/
| lsb-release  | https://www.howtogeek.com/691214/how-to-check-the-linux-kernel-and-operating-system-version/ or https://manpages.debian.org/bullseye/lsb-release/lsb_release.1.en.html

# License & Copyright
BSD 3-Clause "New" or "Revised" License

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/m100047r)


