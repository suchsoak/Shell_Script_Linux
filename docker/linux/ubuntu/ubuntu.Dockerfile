FROM ubuntu
LABEL maintainer "BY: suchsoak"
LABEL maintainer "V.1.0.0"
RUN apt-get update && apt-get upgrade -y
RUN dpkg --configure -a
RUN apt-get update && apt-get install -y \
    make \
    curl \
    wget \
    git \
    vim \
    htop \
    net-tools \
    ssh \
    neofetch \
    inxi \
    tar \
    smartmontools \
    snap \
    build-essential \ 
    gcc \
    pip \
    nano \
    default-jdk \
    default-jre  \
    ruby \
    python3 \
    lsb-release \
    mysql-server \
    apache2 \
    nginx   
RUN apt-get install -y build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev
RUN apt-get install build-essential gcc g++ -y
RUN apt-get install sudo -y
RUN sudo apt-get update && sudo apt-get upgrade -y
RUN python3 -m pip install --upgrade pip
# EXPOSE 8080
# ENTRYPOINT [ "apt-get", "install", "-y", "postgresql" ]
RUN ifconfig