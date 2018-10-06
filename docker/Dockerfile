FROM jupyter/minimal-notebook:1145fb1198b2
LABEL maintainer="Geoff Boeing <g.boeing@northeastern.edu>"

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# symlink and permissions
USER root
RUN ln -s /opt/conda/bin/jupyter /usr/local/bin
USER $NB_UID

# configure conda
RUN conda config --set always_yes yes --set show_channel_urls true
RUN conda config --add channels conda-forge --force
#RUN conda update --all

# install python packages with conda
RUN conda install --override-channels -c conda-forge \
    bokeh \
    bottleneck \
    cython \
    folium \
    geopandas \
    jupyterlab \
    networkx \
    notebook=5.6 \
    numexpr \
    numpy \
    osmnx \
    pillow \
    scikit-learn \
    scipy \
    seaborn \
    statsmodels \
    xlrd \
    xlwt

# enable jupyter extensions
#RUN jupyter labextension install @jupyterlab/hub-extension
#RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
#RUN jupyter labextension install jupyter-leaflet

# set a jupyter notebook password for easier launching (no more copying tokens)
RUN jupyter notebook -y --generate-config
RUN echo "c.NotebookApp.password='sha1:937f4dba37cc:8a736cc93673985a13eb1dbd1b46737bdd186d4c'">>/home/jovyan/.jupyter/jupyter_notebook_config.py

# so the notebook launches from the working directory that we mount
WORKDIR /home/jovyan/work

# clean up
RUN conda clean --all
RUN conda info --all
RUN conda list
