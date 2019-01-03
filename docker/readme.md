# Advanced Spatial Analysis: Docker Container

You need to install [docker](https://www.docker.com/) first.

The image is available from https://hub.docker.com/u/gboeing

## Pull image, run container

### On Windows:

Open a command prompt, change directory to location of notebook file, and run:

```
docker run --rm -it --name asa -p 8888:8888 -v %cd%:/home/jovyan/work gboeing/asa jupyter lab
```

This runs the container ephemerally, interactively, with friendly name "asa", exposing container's port 8888 on host machine's port 8888, mounting the current directory on the host machine as the container's working directory, and launching jupyter lab.

### On Mac/Linux:

```
docker run --rm -it --name asa -p 8888:8888 -v "$PWD":/home/jovyan/work gboeing/asa jupyter lab
```

### To access jupyter running in this container

Open web browser and visit [http://localhost:8888](http://localhost:8888)

### To access bash in this container:

```
docker run --rm -it --name asa -v %cd%:/home/jovyan/work gboeing/asa /bin/bash
```

## Other admin tasks

### Pull image down from registry without running

```
docker pull gboeing/asa
```

### Build the image from dockerfile

First make updates to the dockerfile. Then use this command to build the new image and tag it with a friendly name (gboeing/asa):

```
docker build -t gboeing/asa .
```

### Push the built image to hub so others can pull it

First tag the local image to associate it with a remote image on the hub (same names in this case). Then login and push it.

```
docker tag gboeing/asa gboeing/asa
docker login
docker push gboeing/asa
```

### Stop/delete all docker containers/images

In terminal or Git Bash:

```
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
```
