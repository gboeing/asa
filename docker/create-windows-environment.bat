CALL conda create -n asa -c conda-forge --yes --file requirements.txt
CALL conda activate asa
CALL python -m ipykernel install --user
CALL jupyter labextension install @jupyter-widgets/jupyterlab-manager
CALL jupyter labextension install jupyter-leaflet
CALL conda clean --all --yes
CALL conda deactivate