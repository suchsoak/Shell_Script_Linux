FROM opensuse/tumbleweed:latest
RUN zypper update && zypper in -y \
    make \
    curl \
    wget \
    git \
    vim \
    net-tools \
    openssh \
    neofetch \
    inxi \
    smartmontools \
    docker \
    nano \
    gcc \
    nodejs \
    python \
    python3-pip \
    python3 \
    ruby 
RUN zypper update
RUN zypper in -y mysql-server
RUN zypper in -y postgresql
RUN zypper refresh
RUN zypper update
CMD [ "neofetch" ] 