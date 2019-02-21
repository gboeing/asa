# Docker Container

You need to install [docker](https://www.docker.com/) first. If you're on Windows, you must have Microsoft Windows 10 Professional or Enterprise 64-bit. If you don't, you'll need to [upgrade](https://support.microsoft.com/en-us/help/12384/windows-10-upgrading-home-to-pro) your OS.

The image is available from https://hub.docker.com/u/gboeing

## Pull image, run container

### On Windows:

Open a command prompt, change directory to location of notebook file, and run:

```
docker run --rm -it --name asa -p 8888:8888 -v %cd%:/home/jovyan/work gboeing/asa
```

This runs the container ephemerally, interactively, with friendly name "asa", exposing container's port 8888 on host machine's port 8888, mounting the current directory on the host machine as the container's working directory, and launching jupyter lab.

### On Mac/Linux:

```
docker run --rm -it --name asa -p 8888:8888 -v "$PWD":/home/jovyan/work gboeing/asa
```

### To access jupyter running in this container

Open web browser and visit [http://localhost:8888](http://localhost:8888)

### To access bash in this container:

```
docker run --rm -it -u 0 --name asa -v %cd%:/home/jovyan/work gboeing/asa /bin/bash
```

Replace `%cd%` with `"$PWD"` if you're on Mac/Linux.

## Pull image down from registry without running

```
docker pull gboeing/asa
```
