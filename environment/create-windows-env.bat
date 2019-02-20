CALL conda create -n asa -c conda-forge --yes python=3 --file requirements.txt
CALL activate asa
CALL python -m ipykernel install --user
CALL jupyter labextension install @jupyter-widgets/jupyterlab-manager
CALL jupyter labextension install jupyter-leaflet
CALL conda clean --all --yes
