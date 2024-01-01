    FROM archlinux
    LABEL maintainer "BY: suchsoak"
    LABEL maintainer "V.1.0.0"
    RUN pacman-key --init
    RUN pacman -Syyuu --noconfirm
    RUN pacman -Sy wget git vim make net-tools wireless_tools nano xdg-utils openssh neofetch inxi smartmontools lua --noconfirm 
    RUN pacman --noconfirm -Sy \
        gcc \
        curl \
        htop \
        nodejs \
        ruby \
        apache \
        tar \
        jre-openjdk \
        python3 
    RUN pacman -Sy sudo --noconfirm
    RUN pacman -Sy mysql --noconfirm
    RUN sudo pacman -S python3 python-pip --noconfirm
    CMD [ "ruby", "-v" ]
