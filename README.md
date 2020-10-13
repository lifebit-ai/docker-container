# docker-container
A basic template for installing libraries with conda, pip or R installation commands


## How to find docker containers in DockerHub

1. Visit the following website: https://hub.docker.com/
2. Type the name of the tool you are looking for


## How to use a docker container

Let's assume that we found with the method above a container named `biocontainers/vcftools`.
We can use the container using the following command which will emulates our typical command line environment:

> NOTE: Files available only in the working directory where this command was run will only be available.


```
# docker run -v $PWD:$PWD -w $PWD -it: mounts the working directory, so that we can use input files, and the output files are also saved
# biocontainers/vcftools: points to the docker image from docker hub,  
docker run -v $PWD:$PWD -w $PWD -it biocontainers/vcftools:v0.1.16-1-deb_cv1
```


