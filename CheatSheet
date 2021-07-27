Docker container run
docker run -p <port on host>:<port in docker container> -v <directory on host>:<directory to mount to on container> ImageName

to run and enter a container at the same time
docker run -it ImageName <sh, /bin/bash>

Remove all images
docker rmi -f $(docker images -q)

Remove all containers
docker rm -f $(docker ps -a -q)
