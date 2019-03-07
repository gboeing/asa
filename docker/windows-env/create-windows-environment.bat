CALL conda update conda -n base --yes
CALL conda deactivate
CALL conda env remove -n asa --yes
CALL conda create -n asa -c conda-forge --file "../requirements.txt" --yes
CALL conda activate asa
CALL python -m ipykernel install --user
CALL jupyter labextension install @jupyter-widgets/jupyterlab-manager
CALL jupyter labextension install jupyter-leaflet
CALL conda clean --all --yes
CALL conda env export > environment-windows.yml
CALL python -c "import osmnx; print(osmnx.__version__)"
