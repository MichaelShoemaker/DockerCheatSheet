FROM <Base image>

ENV MONGO_MAJOR=3.4\
    MONGO_VERSION=3.4.4\
    MONGO_PACKAGE=mongodb-org
#(Note: The above could have been split into seperate lines like ENV MONGO_VERSION 3.4.4
#, but by using \'s we only create one image layer)

ARG VERSION
(Defines a varialbe that will be supplied at build time. Does not persist into the container.)

#COPY, ADD and RUN add layers.Using && below will result in one layer instead of two.
RUN <["executable","parameter",...]>
Best Practice:RUN apt-get update &&\   
                  apt-get install -y wget &&\
#The line below cleans up after package installs
                  rm -rf /var/lib/apt/lists/*
#no-install-recommends on the same line as an install 
#will prevent packages that are not dependencies, but are recommended from being installed.
                  
COPY ["<src>".."<dst>"]

CMD ["<command>", "<parameter>",....]
Defines default commands or default parameters to entrypoint.
Command line arguments override CMD

ENTRYPOINT ["<executable>","<parameter>",...]
The difference between CMD and Entrypoint is that entrypoint is intended to constrain the user. 

So we can do something like
CMD ["echo","Hello World!"]
ENTRYPOINT ["sh"]


#If you want very small images check out distroless
#https://github.com/GoogleContainerTools/distroless
