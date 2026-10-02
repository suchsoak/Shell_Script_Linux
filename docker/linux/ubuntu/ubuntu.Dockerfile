FROM ubuntu:24.04

LABEL maintainer="suchsoak" \
      version="1.0.0" \
      org.opencontainers.image.title="PackScript Ubuntu" \
      org.opencontainers.image.description="Ubuntu development and system utilities container"

ENV LANG=C.UTF-8

# Keep service packages installed without trying to start daemons during image builds.
RUN printf '#!/bin/sh\nexit 101\n' > /usr/sbin/policy-rc.d \
    && chmod +x /usr/sbin/policy-rc.d \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        apache2 \
        build-essential \
        curl \
        default-jdk \
        gcc \
        git \
        htop \
        inxi \
        libcurl4-openssl-dev \
        libgmp-dev \
        libxml2-dev \
        libxslt1-dev \
        lsb-release \
        make \
        mysql-server \
        nano \
        net-tools \
        nginx \
        openssh-client \
        python3 \
        python3-pip \
        ruby \
        ruby-dev \
        smartmontools \
        sudo \
        tar \
        vim \
        wget \
        zlib1g-dev \
    && rm -f /usr/sbin/policy-rc.d \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
