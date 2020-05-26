FROM debian

VOLUME /var/lib/Repetier-Server

EXPOSE 3344

CMD [ "/usr/local/Repetier-Server/bin/RepetierServer", "-c", "/usr/local/Repetier-Server/etc/RepetierServer.xml" ]

RUN apt-get update \
  && apt-get install -y wget \
  && wget http://download.repetier.com/files/server/debian-armhf/Repetier-Server-0.93.1-Linux.deb -O Repetier.deb \
  && dpkg --unpack Repetier.deb \
  && rm -rf Repetier.deb \
  && rm -rf /var/lib/apt/lists/*
