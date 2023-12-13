FROM --platform=$TARGETOS/$TARGETARCH mcr.microsoft.com/dotnet/aspnet:8.0

RUN apt update -y && useradd -d /home/container -m container

USER container
ENV  USER=container HOME=/home/container
WORKDIR /home/container

COPY ./../entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]