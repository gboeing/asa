########################################################################
# ASA course Dockerfile
# Web: https://github.com/gboeing/asa
#
# Build an image from the dockerfile:
# >>> docker build -t gboeing/asa .
#
# Push the built image to hub so others can pull/run it:
# >>> docker tag gboeing/asa gboeing/asa:latest
# >>> docker login
# >>> docker push gboeing/asa
#
# Run bash in this container and export final conda environment to a yml file:
# >>> docker run --rm -it -u 0 --name asa -v %cd%:/home/jovyan/work gboeing/asa /bin/bash
# >>> conda env export -n base > /home/jovyan/work/environment.yml
#
# Run jupyter lab in this container:
# >>> docker run --rm -it --name asa -p 8888:8888 -v %cd%:/home/jovyan/work gboeing/asa
#
# Stop/delete all local docker containers/images:
# >>> docker stop $(docker ps -aq)
# >>> docker rm $(docker ps -aq)
# >>> docker rmi $(docker images -q)
########################################################################

FROM jupyter/base-notebook
LABEL maintainer="Geoff Boeing <g.boeing@northeastern.edu>"

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# symlink and permissions
USER root
RUN ln -s /opt/conda/bin/jupyter /usr/local/bin
USER $NB_UID

COPY requirements.txt /tmp/

RUN conda config --set show_channel_urls true && \
    conda config --prepend channels conda-forge && \
    conda update --override-channels -c conda-forge --yes -n base conda && \
    conda update --override-channels -c conda-forge --yes --all && \
    conda install --override-channels -c conda-forge --yes --file /tmp/requirements.txt && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    jupyter labextension install jupyter-leaflet && \
    conda clean --yes --all && \
    conda info --all && \
    conda list

# launch notebook in the local working directory that we mount
WORKDIR /home/jovyan/work

# set default command to launch when container is run
CMD ["jupyter", "lab", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''"]
