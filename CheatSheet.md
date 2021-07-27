Docker container run</br>
docker run -p <port on host>:<port in docker container> -v <directory on host>:<directory to mount to on container> ImageName

To run and enter a container at the same time</br>
docker run -it ImageName <sh, /bin/bash>

Remove all images</br>
docker rmi -f $(docker images -q)

Remove all containers</br>
docker rm -f $(docker ps -a -q)
