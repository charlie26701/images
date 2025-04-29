FROM --platform=$TARGETOS/$TARGETARCH ubuntu:22.04

# 安裝基本套件並升級到 24.04
RUN apt-get update -y && \
    apt-get install -y \
    lsb-release \
    sudo \
    software-properties-common \
    && add-apt-repository ppa:ubuntu-archive-keyring/ppa \
    && apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get upgrade -y \
    && useradd -d /home/container -m container \
    && echo "container:container" | chpasswd \
    && echo "container ALL=(ALL) ALL" >> /etc/sudoers \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY ./../entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

CMD ["/bin/bash", "/entrypoint.sh"] 