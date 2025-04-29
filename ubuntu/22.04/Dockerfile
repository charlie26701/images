FROM --platform=$TARGETOS/$TARGETARCH ubuntu:22.04

# 安裝基本套件
RUN apt-get update -y && \
    apt-get install -y \
    lsb-release \
    sudo \
    && useradd -d /home/container -m container \
    && echo "container:container" | chpasswd \
    && echo "container ALL=(ALL) ALL" >> /etc/sudoers

COPY ./../entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

CMD ["/bin/bash", "/entrypoint.sh"] 