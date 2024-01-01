FROM fedora
LABEL maintainer "BY: suchsoak"
LABEL maintainer "V.1.0.0"
RUN dnf update -y
RUN dnf update --refresh 
RUN dnf update && dnf install -y \
    make \
    curl \
    wget \
    git \
    vim \
    htop \
    net-tools \
    openssh \
    htop \
    neofetch \
    inxi \
    tar \
    xdg-utils \
    smartmontools \
    snapd  \
    nano \
    java-latest-openjdk\ 
    iw \
    gcc \
    g++ \   
    pip \
    ruby \
    iw \
    python3 \
    redhat-lsb-core \
    mysql-server \
    httpd   \
    nginx   
RUN python3 -m pip install --upgrade pip
RUN dnf install sudo -y
RUN sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN sudo dnf check-update
RUN sudo dnf update -y
CMD [ "iw" ]
