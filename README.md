
# PACKSCRIPT

!["Shell"](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

**This is a shell script for you to have everything when formatting your linux**
>[!TIP]
>Before starting script recommended to `update` the system before

`This script is under development`

# Linux
!["Linux"](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
!["Ubuntu"](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
!["LinuxMint"](https://img.shields.io/badge/Linux_Mint-87CF3E?style=for-the-badge&logo=linux-mint&logoColor=white)
!["Kali linux"](https://img.shields.io/badge/Kali_Linux-557C94?style=for-the-badge&logo=kali-linux&logoColor=white)
!["Fedora"](https://img.shields.io/badge/Fedora-294172?style=for-the-badge&logo=fedora&logoColor=white)
!["Debian"](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)
!["Arch linux"](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
!["OpenSUSE"](https://img.shields.io/badge/SUSE-0C322C?style=for-the-badge&logo=SUSE&logoColor=white)

## Install

> With Git

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

> [!IMPORTANT]  
> You need install `lsb-release` for work, see in requirements.txt.
> https://github.com/suchsoak/Shell_Script_Linux/blob/main/requirements.txt
> 
> redhat-lsb-core (for fedora)

## Docker

`Arch Linux`

```sh
   pacman -Sy --noc && pacman -S sudo --noc && pacman -S git --noc && pacman -S nano --noc && sudo pacman -S lsb-release --noc && clear && git clone https://github.com/suchsoak/Shell_Script_Linux.git && cd Shell_Script_Linux && chmod +X script.sh && clear && bash script.sh
```

`Ubuntu - Debian - Kali Linux - Linux Mint`

```sh
   apt update && apt install git -y && apt install sudo -y && sudo apt install lsb-release -y && git clone https://github.com/suchsoak/Shell_Script_Linux.git && cd Shell_Script_Linux && chmod 777 script.sh && clear && bash ./script.sh
```

`Fedora Linux`

```sh
   dnf update -y && dnf install git -y && dnf install sudo -y && sudo dnf install redhat-lsb-core -y && git clone https://github.com/suchsoak/Shell_Script_Linux.git && cd Shell_Script_Linux && chmod 777 script.sh && clear && bash ./script.sh  
```

`openSUSE`

```sh
   zypper update && zypper in -y git && zypper in -y sudo && sudo zypper in -y lsb-release && git clone https://github.com/suchsoak/Shell_Script_Linux.git && cd Shell_Script_Linux && chmod 777 script.sh && clear && bash ./script.sh  
```

### **Dockerfile**

### Usage

```sh

  sudo docker build -f < Distro >.Dockerfile -t < Distro_name > .

```
**or**

With `Makefile`

```sh

make

```

| Dockerfiles |  Links |
| ------ | ------ |
| Dockerfile | https://github.com/suchsoak/Shell_Script_Linux/tree/main/docker/linux

# Termux

!["Android"](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)

>  [!Note]
> For termux i will use `uname`

```sh
elif [ "$(uname -o)" == "Android" ]; then
```

### Kali Nethunter

```sh
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

```

| Details |  Link |
| ------ | ------ |
| Kali Nethunter | https://github.com/suchsoak/Shell_Script_Linux/releases/tag/V.1.0.0


## Usage

```sh
  bash ./script.sh
```

# Packages | Programming language | Hacking tools

```sh            
  curl             | Ruby (gem)    | nmap
  wget             | Lua           | aircrack-ng
  git              | gcc           | wifite
  vim              | g++           | sqlmap
  net-tools        | Nodejs        | dnsrecon
  neofetch         | Python (pip)  | tor and tor broweser (Not for termux)
  inxi             | SQL           | hydra
  smartmontools    | Java          | proxychains
  wireless_tools   | Lua53         | host (Ubuntu and Debian)
  xdg-utils                        | mcrypt (Ubuntu, debian and fedora)
  lsb-release                      | wireshark, wireshark-qt and wireshark-cli for archlinux
  libwacom-bin                     | netcat
  libwacom-common                  | wpscan
  Docker or Docker.io              | metasploit
  rpm (for fedora)                 | john (Not for termux)
  iw (for fedora)
  java-latest-openjdk (for fedora)                  
  snap (Ubuntu, debian and fedora)
  htop
  qemu-utils (for termux)
  openjdk-17 (for termux)
  libcap-ng (for termux)
  nmh (for termux)
  tsduck-tools (for termux)
  lvm2 (for termux)
  qemu-utils (for termux)
  mailutils (for termux)
  yadara (for termux)
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
| Kali Nethunter   | https://www.kali.org/docs/nethunter/nethunter-rootless/
| Hacking Tools   | https://github.com/suchsoak/Shell_Script_Linux/releases/tag/V.1.0.1

# License & Copyright
`BSD 3-Clause "New" or "Revised" License`
