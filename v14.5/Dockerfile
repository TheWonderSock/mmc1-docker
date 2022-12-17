FROM ubuntu:latest
EXPOSE 25565/tcp
EXPOSE 19132/udp
SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y \
openjdk-17-jre \
curl \
unzip \
dos2unix \
&& rm -rf /var/lib/apt/lists/*

RUN curl -sL https://mediafilez.forgecdn.net/files/4160/224/Medieval+MC+FABRIC+Server+Pack+1.19.2+v14.5.zip --output /root/mmc1.zip
RUN mkdir -p /app
RUN unzip -qo /root/mmc1.zip -d /app/
WORKDIR /app/
RUN ls -l > test.txt
# RUN mv "Medieval MC FABRIC Server Pack 1.19.2" mmc1 \
#     && mv mmc1/* .
RUN mv Medieval\ MC\ FABRIC\ Server\ Pack\ 1.19.2/* .
COPY eula.txt /app/eula.txt
# RUN dos2unix /app/start.sh
ENTRYPOINT mkdir -p /mnt/mmc1; \
    echo "Copying server files over to mount location /mnt/mmc1"; \
    /bin/cp -R /app/ /mnt/mmc1; \
    echo "Finished moving files"; \
    cd /mnt/mmc1/app/; \
    echo "Starting start.sh\n"; \
    cd /mnt/mmc1/app/; \
    /bin/bash start.sh; \
    echo "start.sh exited! Sleeping infinitely.\n"; \
    sleep infinity