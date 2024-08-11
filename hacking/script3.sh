if [ "$(lsb_release -si)" == "Debian" ] || [ "$(lsb_release -si)" == "Ubuntu" ] || [ "$(lsb_release -si)" == "Linuxmint" ] || [ "$(lsb_release -si)" == "Kali" ] || [ "$(lsb_release -si)" == "kali" ]; then

clear
sudo apt update
clear
Hackingtools=$(cat << "tools"
 _  _  ___   ___  _  __ ___  _  _   ___ 
| || |/   \ / __|| |/ /|_ _|| \| | / __|
| __ || - || (__ |   <  | | | .  || (_ |
|_||_||_|_| \___||_|\_\|___||_|\_| \___| 
Github: github.com/suchsoak
BY: suchsoak
V:1.0.1
tools
)
echo "$Hackingtools"
sleep 3 > /dev/null
clear
sudo apt install nmap -y
sudo apt install aircrack-ng -y
sudo apt install wifite -y
sudo apt install hydra -y
sudo apt install tcpdump -y
sudo apt install sqlmap -y
sudo apt install john -y
sudo apt install hashcat -y
sudo apt install mcrypt -y
sudo apt install proxychains4 -y
sudo apt install tor -y
sudo apt install host -y
sudo apt install dnsrecon -y
sudo apt install netcat -y
clear
wireshark=$(cat << "shark"
        +------------------------------+
        |oooooooooooooooooooo++++++++++|
        |oooooooooooooooo+++::+::::.::+|
        |oooooooooooo+++++:::::.:.::.+o|
        |oooooooooo++:++::..::.....:+oo|
        |ooooooooo+:++:............+ooo|
        |ooooooo++++::.:...........+ooo|
        |ooooo++++::............ . oooo|
        |oooo++++:::....... . .  . oooo|
        |ooo+::+:........ .   .  ..+ooo|
        |ooo+++:....... ..  .     .+ooo|
        |oo+++::........ .         +ooo|
        |o+:+:....... .            :ooo|
        |++:+++++++++::::::.....:.::+oo|
        |++++++++++++++++++++++:++:+:+o|
        |+++++++++++++++++++++++++++++o|
        +------------------------------+
shark
        )

        echo "$wireshark"
        sleep 2 > /dev/null

sudo apt install wireshark -y
sudo apt install nikto -y

sleep 3 > /dev/null
clear
wpscan=$(cat << "scan"
_______________________________________________________________
         __          _______   _____
         \ \        / /  __ \ / ____|
          \ \  /\  / /| |__) | (___   ___  __ _ _ __ ®
           \ \/  \/ / |  ___/ \___ \ / __|/ _` | '_ \
            \  /\  /  | |     ____) | (__| (_| | | | |
             \/  \/   |_|    |_____/ \___|\__,_|_| |_|

         WordPress Security Scanner by the WPScan Team
                      Version 3.8.25
                               
       @_WPScan_, @ethicalhack3r, @erwan_lr, @firefart
_______________________________________________________________
scan
)

echo "$wpscan"
sleep 2 > /dev/null
sudo apt install ruby -y
sudo gem update --system
sudo apt install build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev -y
sudo gem install wpscan
wpscan --update
clear
        tor=$(cat << "tor1"                                  
                      . ..                        
                 ... . .......~. ..               
            ..... ... ...+==+=+:~.. ..            
          .  ..  . . .  .~::++=o==+:~ . .         
         . ..  .  .   .       ..~+=o=+.  .        
       .  .   . .. .. ...~:~~..  ..~+o=+.  .      
        .   .           .+===o+:..  .:=o=~  .     
         .      .  .      ..~:=oo+. . ~=o=~       
   .   .       .    .    .    .~=o=~   .=o=.  .   
   .                    .+++~   .+oo~   ~oo:      
         .               +ooo~   .oo+   .=o=.     
                        .+ooo+    =o=    =o=      
                        .+oo=:   .=o+   .=o+      
                         ++:.   .+o=.   ~oo:      
                               ~=o=~   .=o=.      
                          ..~:=o=:.   .=o=.       
                         :====+:.    ~=o=.        
                         ~~..     .~+o=:          
                               .~+===+.           
                         ~~::+=o==+~              
                         :=+++:~.                 
tor1
)
echo "$tor"
sleep 2 > /dev/null
sleep 2 > /dev/null
wget https://www.torproject.org/dist/torbrowser/13.0.1/tor-browser-linux-x86_64-13.0.1.tar.xz
tar -xf tor-browser-linux-x86_64-13.0.1.tar.xz
cd tor-browser
./start-tor-browser.desktop
sleep 2 > /dev/null
cd ..
clear
msfconsole=$(cat << "msf"
+--------------------------------------------------+
|oooooooooooooooooooooooooooooooooooooooooooooooooo|
|ooooooooooooooooooo+o++++++++++ooooooooooooooooooo|
|oooooooooooo++:~~~               ~~::+oooooooooooo|
|ooooooooooo:                          ~ooooooooooo|
|oooo+oooooo~ ~oooo+~          :+o+o+  ~ooooooooooo|
|ooooooooooo: ~oooooo+:      :+oooooo  :oooooooooo+|
|ooooooooooo: ~ooooooooo: ~:ooooooooo  ~ooooo+ooooo|
|ooooooooooo: ~oooo+oooooooooooo+oooo  :ooooooooooo|
|ooooooooooo~ ~oooo~ :ooooooo+~ ~oooo  ~ooooooooooo|
|o+ooooooooo: ~oooo~   :ooo+~   ~oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~oooo    :oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~ooo+    ~ooo+  ~ooooooo+ooo|
|ooooooooooo:  oooo~   ~+++:    ~ooo+  :oo+oooooooo|
|ooooooooooo+~ ~ooo~            ~oo+~ ~+ooooooooooo|
|ooooooooooooo:  :o~            :o:  :+oooooooooooo|
|oooo+oooooo+oo+:~~              ~ :+oooooooooooooo|
|oooooooooooooooo+:~            ~:+ooooooooooooooo+|
|ooooooooooooooooooo+:        ~+ooooooooooooooooooo|
|oooooooooooooooooooooo:~  ~:++oooooooooooooooooooo|
|oooooo+ooooooooooooooooo++oooooooooooooooooooooooo|
|oooooooooooooooooooooooooooooooooooooooooooooo+ooo|
+--------------------------------------------------+
msf
)
echo "$msfconsole"
sleep 2 > /dev/null
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
sleep 2 > /dev/null
cd ..
clear
echo
echo "All tools installed!! have good day hacker!!"
echo

# Arch Linux Tools

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
    Hackingtools=$(cat << "tools"

     _  _  ___   ___  _  __ ___  _  _   ___ 
    | || |/   \ / __|| |/ /|_ _|| \| | / __|
    | __ || - || (__ |   <  | | | .  || (_ |
    |_||_||_|_| \___||_|\_\|___||_|\_| \___| 
    Github: github.com/suchsoak
    BY: suchsoak
    V:1.0.1

tools
)
    echo "$Hackingtools"
    sleep 2 > /dev/null
    sudo pacman -S nmap --noconfirm
    sudo pacman -S aircrack-ng --noconfirm
    sudo pacman -S hydra --noconfirm
    sudo pacman -S wifite --noconfirm
    sudo pacman -S proxychains --noconfirm
    sudo pacman -S hashcat --noconfirm
    sudo pacman -S john --noconfirm
    sudo pacman -S tor --noconfirm
    clear
wpscan=$(cat << "scan"
_______________________________________________________________
         __          _______   _____
         \ \        / /  __ \ / ____|
          \ \  /\  / /| |__) | (___   ___  __ _ _ __ ®
           \ \/  \/ / |  ___/ \___ \ / __|/ _` | '_ \
            \  /\  /  | |     ____) | (__| (_| | | | |
             \/  \/   |_|    |_____/ \___|\__,_|_| |_|

         WordPress Security Scanner by the WPScan Team
                      Version 3.8.25
                               
       @_WPScan_, @ethicalhack3r, @erwan_lr, @firefart
_______________________________________________________________
scan
)
        echo "$wpscan"
        sleep 2 > /dev/null
        sudo pacman -S wpscan --noconfirm
        clear
        wireshark=$(cat << "shark"
        +------------------------------+
        |oooooooooooooooooooo++++++++++|
        |oooooooooooooooo+++::+::::.::+|
        |oooooooooooo+++++:::::.:.::.+o|
        |oooooooooo++:++::..::.....:+oo|
        |ooooooooo+:++:............+ooo|
        |ooooooo++++::.:...........+ooo|
        |ooooo++++::............ . oooo|
        |oooo++++:::....... . .  . oooo|
        |ooo+::+:........ .   .  ..+ooo|
        |ooo+++:....... ..  .     .+ooo|
        |oo+++::........ .         +ooo|
        |o+:+:....... .            :ooo|
        |++:+++++++++::::::.....:.::+oo|
        |++++++++++++++++++++++:++:+:+o|
        |+++++++++++++++++++++++++++++o|
        +------------------------------+
shark
        )

        echo "$wireshark"
        sleep 2 > /dev/null
        sudo pacman -S wireshark-qt --noconfirm
        sudo pacman -S wireshark-cli --noconfirm
        clear
        sudo pacman -S sqlmap --noconfirm
        clear
msfconsole=$(cat << "msf"
+--------------------------------------------------+
|oooooooooooooooooooooooooooooooooooooooooooooooooo|
|ooooooooooooooooooo+o++++++++++ooooooooooooooooooo|
|oooooooooooo++:~~~               ~~::+oooooooooooo|
|ooooooooooo:                          ~ooooooooooo|
|oooo+oooooo~ ~oooo+~          :+o+o+  ~ooooooooooo|
|ooooooooooo: ~oooooo+:      :+oooooo  :oooooooooo+|
|ooooooooooo: ~ooooooooo: ~:ooooooooo  ~ooooo+ooooo|
|ooooooooooo: ~oooo+oooooooooooo+oooo  :ooooooooooo|
|ooooooooooo~ ~oooo~ :ooooooo+~ ~oooo  ~ooooooooooo|
|o+ooooooooo: ~oooo~   :ooo+~   ~oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~oooo    :oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~ooo+    ~ooo+  ~ooooooo+ooo|
|ooooooooooo:  oooo~   ~+++:    ~ooo+  :oo+oooooooo|
|ooooooooooo+~ ~ooo~            ~oo+~ ~+ooooooooooo|
|ooooooooooooo:  :o~            :o:  :+oooooooooooo|
|oooo+oooooo+oo+:~~              ~ :+oooooooooooooo|
|oooooooooooooooo+:~            ~:+ooooooooooooooo+|
|ooooooooooooooooooo+:        ~+ooooooooooooooooooo|
|oooooooooooooooooooooo:~  ~:++oooooooooooooooooooo|
|oooooo+ooooooooooooooooo++oooooooooooooooooooooooo|
|oooooooooooooooooooooooooooooooooooooooooooooo+ooo|
+--------------------------------------------------+
msf
)
echo "$msfconsole"
sleep 2 > /dev/null
        sudo pacman -S metasploit --noconfirm
        clear
        tor=$(cat << "tor1"
                      . ..                        
                 ... . .......~. ..               
            ..... ... ...+==+=+:~.. ..            
          .  ..  . . .  .~::++=o==+:~ . .         
         . ..  .  .   .       ..~+=o=+.  .        
       .  .   . .. .. ...~:~~..  ..~+o=+.  .      
        .   .           .+===o+:..  .:=o=~  .     
         .      .  .      ..~:=oo+. . ~=o=~       
   .   .       .    .    .    .~=o=~   .=o=.  .   
   .                    .+++~   .+oo~   ~oo:      
         .               +ooo~   .oo+   .=o=.     
                        .+ooo+    =o=    =o=      
                        .+oo=:   .=o+   .=o+      
                         ++:.   .+o=.   ~oo:      
                               ~=o=~   .=o=.      
                          ..~:=o=:.   .=o=.       
                         :====+:.    ~=o=.        
                         ~~..     .~+o=:          
                               .~+===+.           
                         ~~::+=o==+~              
                         :=+++:~.  
tor1
)
        echo "$tor"
        sleep 2 > /dev/null
        wget https://www.torproject.org/dist/torbrowser/13.0.1/tor-browser-linux-x86_64-13.0.1.tar.xz
        tar -xf tor-browser-linux-x86_64-13.0.1.tar.xz
        cd tor-browser
        ./start-tor-browser.desktop
        sleep 2 > /dev/null
        clear
        echo
        echo "All tools installed!! have good day hacker!!"
        echo

  elif [ "$(lsb_release -si)" == "Fedora" ]; then
            clear
          Hackingtools=$(cat << "tools"

    _  _  ___   ___  _  __ ___  _  _   ___ 
    | || |/   \ / __|| |/ /|_ _|| \| | / __|
    | __ || - || (__ |   <  | | | .  || (_ |
    |_||_||_|_| \___||_|\_\|___||_|\_| \___| 
    Github: github.com/suchsoak
    BY: suchsoak
    V:1.0.1
tools
)
    echo "$Hackingtools"
    sleep 3 > /dev/null
    clear

wpscan=$(cat << "scan"
_______________________________________________________________
         __          _______   _____
         \ \        / /  __ \ / ____|
          \ \  /\  / /| |__) | (___   ___  __ _ _ __ ®
           \ \/  \/ / |  ___/ \___ \ / __|/ _` | '_ \
            \  /\  /  | |     ____) | (__| (_| | | | |
             \/  \/   |_|    |_____/ \___|\__,_|_| |_|

         WordPress Security Scanner by the WPScan Team
                      Version 3.8.25
                               
       @_WPScan_, @ethicalhack3r, @erwan_lr, @firefart
_______________________________________________________________
scan
)
        echo "$wpscan"
        sleep 2 > /dev/null
        sudo dnf install ruby -y
        sudo gem update --system
        sudo dnf install libxml2-2.10.4-3.fc39.x86_64 -y
        sudo gem install wpscan
        wpscan --update
        clear
        sudo dnf install git -y
        sudo dnf install make -y
        clear
        sudo dnf install snapd -y
        sudo dnf install update -y
        sudo dnf install nmap -y
        sudo dnf install aircrack-ng -y
        sudo apt install mcrypt -y
        sudo dnf install hydra -y
        sudo dnf install john -y
        sudo dnf install hashcat -y
        sudo dnf install proxychains-ng -y
        sudo dnf install tor -y
        git clone https://github.com/derv82/wifite2.git
        clear
        echo
        echo -e "\e[31mWifite is installed with git, you just need to use: sudo ./wifite.py\e[0m"
        echo
        sleep 3 > /dev/null
        clear
        wireshark=$(cat << "shark"
        +------------------------------+
        |oooooooooooooooooooo++++++++++|
        |oooooooooooooooo+++::+::::.::+|
        |oooooooooooo+++++:::::.:.::.+o|
        |oooooooooo++:++::..::.....:+oo|
        |ooooooooo+:++:............+ooo|
        |ooooooo++++::.:...........+ooo|
        |ooooo++++::............ . oooo|
        |oooo++++:::....... . .  . oooo|
        |ooo+::+:........ .   .  ..+ooo|
        |ooo+++:....... ..  .     .+ooo|
        |oo+++::........ .         +ooo|
        |o+:+:....... .            :ooo|
        |++:+++++++++::::::.....:.::+oo|
        |++++++++++++++++++++++:++:+:+o|
        |+++++++++++++++++++++++++++++o|
        +------------------------------+
shark
        )
        echo -e "$wireshark"
        sleep 2 > /dev/null
        sudo dnf install wireshark -y
        sudo dnf install nikto -y
        git clone https://github.com/sqlmapproject/sqlmap.git
        cd sqlmap
        python3 sqlmap.py
        echo
        echo "Just Testing"
        echo
        sleep 3 > /dev/null
        cd ..
        clear
        tor=$(cat << "tor1"
                      . ..                        
                 ... . .......~. ..               
            ..... ... ...+==+=+:~.. ..            
          .  ..  . . .  .~::++=o==+:~ . .         
         . ..  .  .   .       ..~+=o=+.  .        
       .  .   . .. .. ...~:~~..  ..~+o=+.  .      
        .   .           .+===o+:..  .:=o=~  .     
         .      .  .      ..~:=oo+. . ~=o=~       
   .   .       .    .    .    .~=o=~   .=o=.  .   
   .                    .+++~   .+oo~   ~oo:      
         .               +ooo~   .oo+   .=o=.     
                        .+ooo+    =o=    =o=      
                        .+oo=:   .=o+   .=o+      
                         ++:.   .+o=.   ~oo:      
                               ~=o=~   .=o=.      
                          ..~:=o=:.   .=o=.       
                         :====+:.    ~=o=.        
                         ~~..     .~+o=:          
                               .~+===+.           
                         ~~::+=o==+~              
                         :=+++:~.  
tor1
)
        echo "$tor"
        sleep 2 > /dev/null
        wget https://www.torproject.org/dist/torbrowser/13.0.1/tor-browser-linux-x86_64-13.0.1.tar.xz
        tar -xf tor-browser-linux-x86_64-13.0.1.tar.xz
        cd tor-browser
        ./start-tor-browser.desktop
        sleep 2 > /dev/null
        cd ..
        clear
msfconsole=$(cat << "msf"
+--------------------------------------------------+
|oooooooooooooooooooooooooooooooooooooooooooooooooo|
|ooooooooooooooooooo+o++++++++++ooooooooooooooooooo|
|oooooooooooo++:~~~               ~~::+oooooooooooo|
|ooooooooooo:                          ~ooooooooooo|
|oooo+oooooo~ ~oooo+~          :+o+o+  ~ooooooooooo|
|ooooooooooo: ~oooooo+:      :+oooooo  :oooooooooo+|
|ooooooooooo: ~ooooooooo: ~:ooooooooo  ~ooooo+ooooo|
|ooooooooooo: ~oooo+oooooooooooo+oooo  :ooooooooooo|
|ooooooooooo~ ~oooo~ :ooooooo+~ ~oooo  ~ooooooooooo|
|o+ooooooooo: ~oooo~   :ooo+~   ~oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~oooo    :oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~ooo+    ~ooo+  ~ooooooo+ooo|
|ooooooooooo:  oooo~   ~+++:    ~ooo+  :oo+oooooooo|
|ooooooooooo+~ ~ooo~            ~oo+~ ~+ooooooooooo|
|ooooooooooooo:  :o~            :o:  :+oooooooooooo|
|oooo+oooooo+oo+:~~              ~ :+oooooooooooooo|
|oooooooooooooooo+:~            ~:+ooooooooooooooo+|
|ooooooooooooooooooo+:        ~+ooooooooooooooooooo|
|oooooooooooooooooooooo:~  ~:++oooooooooooooooooooo|
|oooooo+ooooooooooooooooo++oooooooooooooooooooooooo|
|oooooooooooooooooooooooooooooooooooooooooooooo+ooo|
+--------------------------------------------------+
msf
)
echo "$msfconsole"
sleep 2 > /dev/null
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
sleep 2 > /dev/null
cd ..
echo
echo "All tools installed!! have good day hacker!!"
echo
# Android
elif [ "$(uname -o)" == "Android" ]; then
    pkg update 
    pkg upgrade -y
    clear
    Hackingtools=$(cat << "tools"
    _  _  ___   ___  _  __ ___  _  _   ___ 
    | || |/   \ / __|| |/ /|_ _|| \| | / __|
    | __ || - || (__ |   <  | | | .  || (_ |
    |_||_||_|_| \___||_|\_\|___||_|\_| \___| 
    Github: github.com/suchsoak
    BY: suchsoak
    V:1.0.1
tools
)
    echo "$Hackingtools"
    sleep 3 > /dev/null
    clear
    pkg install make -y
    pkg install git  -y
    pkg install git build-essential -y
    pkg install nmap -y
    pkg install aircrack-ng -y
    pkg install sqlmap -y
    pkg install tcpdump -y
    pkg install nmap-ncat -y
    pkg install tor -y
    pkg install libcap-ng -y
    pkg install lvm2 -y
    pkg install mailutils -y
    pkg install nmh -y 
    pkg install tsduck-tools -y
    pkg install yara -y
    git clone https://github.com/vanhauser-thc/thc-hydra.git
    cd thc-hydra
    ./configure
    make
    make install
    hydra --help

    clear
msfconsole=$(cat << "msf"
+--------------------------------------------------+
|oooooooooooooooooooooooooooooooooooooooooooooooooo|
|ooooooooooooooooooo+o++++++++++ooooooooooooooooooo|
|oooooooooooo++:~~~               ~~::+oooooooooooo|
|ooooooooooo:                          ~ooooooooooo|
|oooo+oooooo~ ~oooo+~          :+o+o+  ~ooooooooooo|
|ooooooooooo: ~oooooo+:      :+oooooo  :oooooooooo+|
|ooooooooooo: ~ooooooooo: ~:ooooooooo  ~ooooo+ooooo|
|ooooooooooo: ~oooo+oooooooooooo+oooo  :ooooooooooo|
|ooooooooooo~ ~oooo~ :ooooooo+~ ~oooo  ~ooooooooooo|
|o+ooooooooo: ~oooo~   :ooo+~   ~oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~oooo    :oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~ooo+    ~ooo+  ~ooooooo+ooo|
|ooooooooooo:  oooo~   ~+++:    ~ooo+  :oo+oooooooo|
|ooooooooooo+~ ~ooo~            ~oo+~ ~+ooooooooooo|
|ooooooooooooo:  :o~            :o:  :+oooooooooooo|
|oooo+oooooo+oo+:~~              ~ :+oooooooooooooo|
|oooooooooooooooo+:~            ~:+ooooooooooooooo+|
|ooooooooooooooooooo+:        ~+ooooooooooooooooooo|
|oooooooooooooooooooooo:~  ~:++oooooooooooooooooooo|
|oooooo+ooooooooooooooooo++oooooooooooooooooooooooo|
|oooooooooooooooooooooooooooooooooooooooooooooo+ooo|
+--------------------------------------------------+
msf
)
echo "$msfconsole"
sleep 2 > /dev/null
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
sleep 2 > /dev/null
cd ..
#OPENSUSE
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
    sleep 3 > /dev/null
          Hackingtools=$(cat << "tools"

    _  _  ___   ___  _  __ ___  _  _   ___ 
    | || |/   \ / __|| |/ /|_ _|| \| | / __|
    | __ || - || (__ |   <  | | | .  || (_ |
    |_||_||_|_| \___||_|\_\|___||_|\_| \___| 
    Github: github.com/suchsoak
    BY: suchsoak
    V:1.0.1
tools
)
    echo "$Hackingtools"
    sleep 3 > /dev/null
    clear

wpscan=$(cat << "scan"
_______________________________________________________________
         __          _______   _____
         \ \        / /  __ \ / ____|
          \ \  /\  / /| |__) | (___   ___  __ _ _ __ ®
           \ \/  \/ / |  ___/ \___ \ / __|/ _` | '_ \
            \  /\  /  | |     ____) | (__| (_| | | | |
             \/  \/   |_|    |_____/ \___|\__,_|_| |_|

         WordPress Security Scanner by the WPScan Team
                      Version 3.8.25
                               
       @_WPScan_, @ethicalhack3r, @erwan_lr, @firefart
_______________________________________________________________
scan
)
        echo "$wpscan"
        sleep 2 > /dev/null
        sudo zypper in -y ruby 
        sudo gem update --system
        sudo zypper in -y libxml2-2.10.4-3.fc39.x86_64 
        sudo gem install wpscan
        wpscan --update
        clear
        sudo zypper in -y git 
        sudo zypper in -y make 
        clear
        sudo zypper in -y snapd
        sudo zypper in -y update 
        sudo zypper in -y  nmap 
        sudo zypper in -y aircrack-ng 
        sudo zypper in -y hydra 
        sudo zypper in -y john 
        sudo zypper in -y hashcat 
        sudo zypper in -y proxychains-ng 
        sudo zypper in -y tor 
        git clone https://github.com/derv82/wifite2.git
        clear
        echo
        echo -e "\e[31mWifite is installed with git, you just need to use: sudo ./wifite.py\e[0m"
        echo
        sleep 3 > /dev/null
        clear
        wireshark=$(cat << "shark"
        +------------------------------+
        |oooooooooooooooooooo++++++++++|
        |oooooooooooooooo+++::+::::.::+|
        |oooooooooooo+++++:::::.:.::.+o|
        |oooooooooo++:++::..::.....:+oo|
        |ooooooooo+:++:............+ooo|
        |ooooooo++++::.:...........+ooo|
        |ooooo++++::............ . oooo|
        |oooo++++:::....... . .  . oooo|
        |ooo+::+:........ .   .  ..+ooo|
        |ooo+++:....... ..  .     .+ooo|
        |oo+++::........ .         +ooo|
        |o+:+:....... .            :ooo|
        |++:+++++++++::::::.....:.::+oo|
        |++++++++++++++++++++++:++:+:+o|
        |+++++++++++++++++++++++++++++o|
        +------------------------------+
shark
        )
        echo -e "$wireshark"
        sleep 2 > /dev/null
        sudo zypper in -y wireshark 
        git clone https://github.com/sqlmapproject/sqlmap.git
        cd sqlmap
        python3 sqlmap.py
        echo
        echo "Just Testing"
        echo
        sleep 3 > /dev/null
        cd ..
        clear
        tor=$(cat << "tor1"
                      . ..                        
                 ... . .......~. ..               
            ..... ... ...+==+=+:~.. ..            
          .  ..  . . .  .~::++=o==+:~ . .         
         . ..  .  .   .       ..~+=o=+.  .        
       .  .   . .. .. ...~:~~..  ..~+o=+.  .      
        .   .           .+===o+:..  .:=o=~  .     
         .      .  .      ..~:=oo+. . ~=o=~       
   .   .       .    .    .    .~=o=~   .=o=.  .   
   .                    .+++~   .+oo~   ~oo:      
         .               +ooo~   .oo+   .=o=.     
                        .+ooo+    =o=    =o=      
                        .+oo=:   .=o+   .=o+      
                         ++:.   .+o=.   ~oo:      
                               ~=o=~   .=o=.      
                          ..~:=o=:.   .=o=.       
                         :====+:.    ~=o=.        
                         ~~..     .~+o=:          
                               .~+===+.           
                         ~~::+=o==+~              
                         :=+++:~.  
tor1
)
        echo "$tor"
        sleep 2 > /dev/null
        wget https://www.torproject.org/dist/torbrowser/13.0.1/tor-browser-linux-x86_64-13.0.1.tar.xz
        tar -xf tor-browser-linux-x86_64-13.0.1.tar.xz
        cd tor-browser
        ./start-tor-browser.desktop
        sleep 2 > /dev/null
        cd ..
        clear
msfconsole=$(cat << "msf"
+--------------------------------------------------+
|oooooooooooooooooooooooooooooooooooooooooooooooooo|
|ooooooooooooooooooo+o++++++++++ooooooooooooooooooo|
|oooooooooooo++:~~~               ~~::+oooooooooooo|
|ooooooooooo:                          ~ooooooooooo|
|oooo+oooooo~ ~oooo+~          :+o+o+  ~ooooooooooo|
|ooooooooooo: ~oooooo+:      :+oooooo  :oooooooooo+|
|ooooooooooo: ~ooooooooo: ~:ooooooooo  ~ooooo+ooooo|
|ooooooooooo: ~oooo+oooooooooooo+oooo  :ooooooooooo|
|ooooooooooo~ ~oooo~ :ooooooo+~ ~oooo  ~ooooooooooo|
|o+ooooooooo: ~oooo~   :ooo+~   ~oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~oooo    :oooo  :ooooooooooo|
|ooooooooooo: ~oooo~   ~ooo+    ~ooo+  ~ooooooo+ooo|
|ooooooooooo:  oooo~   ~+++:    ~ooo+  :oo+oooooooo|
|ooooooooooo+~ ~ooo~            ~oo+~ ~+ooooooooooo|
|ooooooooooooo:  :o~            :o:  :+oooooooooooo|
|oooo+oooooo+oo+:~~              ~ :+oooooooooooooo|
|oooooooooooooooo+:~            ~:+ooooooooooooooo+|
|ooooooooooooooooooo+:        ~+ooooooooooooooooooo|
|oooooooooooooooooooooo:~  ~:++oooooooooooooooooooo|
|oooooo+ooooooooooooooooo++oooooooooooooooooooooooo|
|oooooooooooooooooooooooooooooooooooooooooooooo+ooo|
+--------------------------------------------------+
msf
)
echo "$msfconsole"
sleep 2 > /dev/null
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
sleep 2 > /dev/null
cd ..
clear
echo
echo "All tools installed!! have good day hacker!!"
echo

else
    echo "Operating system not supported by this script."
fi