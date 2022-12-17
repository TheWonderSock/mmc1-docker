# Medieval MC \[FABRIC\] - MMC1 Dockerfile
See
https://www.curseforge.com/minecraft/modpacks/medieval-mc-fabric

version folders ie `v14.5/` correspond to modpack versions.

## Startup:
Make sure you have Docker Desktop or Docker and docker-compose installed and running. On windows you might want WSL2 configured in Docker Desktop's settings. Not sure.

For some reason the start.sh file doesn't like spaces in folder names. So just make sure you don't place this repo in a directory that contains spaces.

Just cd into your version directory ie `cd v14.5/` and run `docker-compose up`

## Mounts
The `docker-compose-yml` file mounts the container's `/mnt/mmc1` folder to the `data` folder in the same directory as `docker-compose-yml`.

Set this up manually if not using docker compose.
This is where all the server files and save files will be located.

## Optional:
You might be able to edit the docker-compose.yml to 