#!bin/bash/
# [[ "$OSTYPE" == "linux-gnu"*
echo
echo "-------------------------UPDATE-------------------------"
echo
sudo apt update -y
sleep 2 > /dev/null
echo
echo "-------------------------Baixando Linguagens De Programação-------------------------"
echo
sudo apt-get install build-essential -y
sudo apt install ruby lua5.3 python3 nodejs -y


echo
echo "-------------------------VISUAL CODE STUDIO-------------------------"
echo
sleep 3 > /dev/null

if [ "$(lsb_release -si)" == "Debian" ] || [ "$(lsb_release -si)" == "Ubuntu" ]; then
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update -y
sudo apt-get install code -y
clear
echo
echo "-------------------------VISUAL_STUDIO_CODE-------------------------"
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
echo "-------------------------BRAVE_BROWSER-------------------------"
echo
sleep 3 > /dev/null
  
elif ["$(lsb_release -si)" == "Arch"] ; then
echo
echo "-------------------------UPDATE-------------------------"
echo
sudo pacman -Sy --noconfirm
echo
echo "-------------------------Baixando Linguagens De Programação-------------------------"
echo
sudo pacman -S gcc g++ --noconfirm
sudo pacman -S ruby lua python nodejs --noconfirm
echo
echo "-------------------------VISUAL CODE STUDIO-------------------------"
echo
sudo pacman -S code --noconfirm
clear
# Caso Tenha Algum Erro
else 
    echo "Ocorreu Um erro."
fi
echo
echo "-------------------------VISUAL_STUDIO_CODE-------------------------"
echo
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
# Caso Tenha Algum Erro
else 
    echo "Ocorreu Um erro."
fi
echo
echo "-------------------------BRAVE_BROWSER-------------------------"
echo

else 
  echo "Sistema operacional não compatível com este script."
fi


