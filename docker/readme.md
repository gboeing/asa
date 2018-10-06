# Advanced Spatial Analysis

# Docker Container

You need to install [docker](https://www.docker.com/) to pull and run this container image.

## Run it

### Windows:

Open a command prompt, change directory to location of notebook file, and run:

```
docker run --rm -it --name asa -p 8888:8888 -v %cd%:/home/jovyan/work gboeing/asa jupyter lab
```

This runs the container ephemerally, interactively, with friendly name "asa", exposing container's port 8888 on host machine's port 8888, mounting the current directory on the host machine as the container's working directory, and launching jupyter lab.

### Mac/Linux:

```
docker run --rm -it --name asa -p 8888:8888 -v "$PWD":/home/jovyan/work gboeing/asa jupyter lab
```

### To access jupyter running in this container

Open web browser and visit [localhost:8888](localhost:8888)

### To access bash in this container:

```
docker run --rm -it --name asa -v %cd%:/home/jovyan/work gboeing/asa /bin/bash
```

## Other tasks

### Pull image down from registry without running

```
docker pull gboeing/asa
```

### Build the image from dockerfile

```
docker build -t gboeing/asa .
```

### Stop/delete all docker containers/images

In terminal or Git Bash:

```
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
```
