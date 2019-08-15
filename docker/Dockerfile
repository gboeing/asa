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

FROM continuumio/miniconda3
LABEL maintainer="Geoff Boeing <boeing@usc.edu>"
LABEL url="https://github.com/gboeing/asa"

COPY requirements.txt /tmp/

# configure conda and install packages in one RUN to keep image tidy
RUN conda config --set show_channel_urls true && \
	conda config --set channel_priority strict && \
    conda config --prepend channels conda-forge && \
    conda update --yes -n base conda && \
    conda install --update-all --force-reinstall --yes --file /tmp/requirements.txt && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
	jupyter labextension install jupyter-leaflet && \
    conda clean --all --yes && \
    conda env export -n base > environment-windows.yml && \
    conda info --all && \
    conda list

# launch jupyter in the local working directory that we mount
WORKDIR /home/jovyan/work

# set default command to launch when container is run
CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]

# to test, import OSMnx and print its version
RUN ipython -c "import osmnx; print(osmnx.__version__)"
