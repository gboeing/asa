CALL conda create -n asa -c conda-forge --yes python=3 --file requirements.txt
CALL activate asa
CALL jupyter labextension install @jupyter-widgets/jupyterlab-manager
CALL jupyter labextension install jupyter-leaflet
