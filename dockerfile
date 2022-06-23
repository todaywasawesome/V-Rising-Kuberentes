FROM fragsoc/steamcmd-wine-xvfb

RUN steamcmd +force_install_dir /home/VRisingServer +login anonymous +app_update 1829350 validate +quit

WORKDIR /home/VRisingServer/

RUN chmod +x ./run.sh

EXPOSE 27015/udp
EXPOSE 27016/udp

ENTRYPOINT Xvfb :0 -screen 0 1024x768x16 & DISPLAY=:0.0 wine VRisingServer.exe -persistentDataPath Z:/data