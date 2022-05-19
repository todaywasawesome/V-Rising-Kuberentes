FROM fragsoc/steamcmd-wine-xvfb

COPY root /

WORKDIR /scripts

RUN chmod +x ./run.sh

EXPOSE 27015/udp
EXPOSE 27016/udp

ENTRYPOINT ./run.sh