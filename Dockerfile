FROM <Base image>

ENV MONGO_MAJOR=3.4\
    MONGO_VERSION=3.4.4\
    MONGO_PACKAGE=mongodb-org
(Note: The above could have been split into seperate lines like ENV MONGO_VERSION 3.4.4, but by using \'s we only create one image layer)

ARG VERSION
(Defines a varialbe that will be supplied at build time. Does not persist into the container.)

RUN <["executable","parameter",...]>
Best Practice:RUN apt-get update &&\   
                  apt-get install -y wget &&\
                  rm -rf /var/lib/apt/lists/*
                  
COPY ["<src>".."<dst>"]

CMD ["<command>", "<parameter>",....]
Defines default commands or default parameters to entrypoint.
Command line arguments override CMD

ENTRYPOINT ["<executable>","<parameter>",...]
The difference between CMD and Entrypoint is that entrypoint is intended to constrain the user. 

