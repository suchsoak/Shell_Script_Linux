FROM ubuntu:latest
LABEL maintainer "suchsoak"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    ruby \
    python3 \
    lsb-release \
    netcat \
    nmap \
    nginx \
    ssh \
    telnet \
    sqlmap \
    dnsrecon \
    hydra \
    proxychains \
    john \
    tor \
    nikto \
    mcrypt \
    aircrack-ng \
    wifite \
    hashcat \
    host


RUN apt-get install -y build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev
RUN apt-get install -y wireshark
CMD [ "nmap" ]