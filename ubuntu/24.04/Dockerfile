FROM --platform=$TARGETOS/$TARGETARCH ubuntu:24.04

# 安裝基本套件
RUN apt-get update -y && \
    apt-get install -y \
    lsb-release \
    sudo \
    && useradd -d /home/container -m container \
    && echo "container:container" | chpasswd \
    && echo "container ALL=(ALL) ALL" >> /etc/sudoers \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY ./../entrypoint.sh /home/container/entrypoint.sh
RUN chmod +x /home/container/entrypoint.sh && \
    chown container:container /home/container/entrypoint.sh

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

CMD ["/bin/bash", "/home/container/entrypoint.sh"] 