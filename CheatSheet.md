<h1>Quick Getting Started Commands</h1></br>
Docker container run:</br>
docker run -p <port on host>:<port in docker container> -v <directory on host>:<directory to mount to on container> ImageName

To run and enter a container at the same time:</br>
docker run -it ImageName <sh, /bin/bash>
  
Run Container and Remove Container on Exit:</br>
docker container run --rm -it alpine sh

List all images:</br>
docker image ls
  
Remove all images:</br>
docker rmi -f $(docker images -q)

Remove all containers:</br>
docker rm -f $(docker ps -a -q)

Remove all stopped containers:</br>
docker prune -y

Start a named container and enter it's command line:</br>
docker start --interactive named-containter
