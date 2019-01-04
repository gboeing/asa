CALL conda create -n ppua7237 -c conda-forge --yes python=3 beautifulsoup4 bokeh bottleneck cartopy cython folium geopandas ipyleaflet ipywidgets jupyterlab networkx nodejs notebook numexpr numpy osmnx pillow scikit-learn scipy seaborn statsmodels xlrd xlwt
CALL activate ppua7237
CALL jupyter labextension install @jupyter-widgets/jupyterlab-manager
CALL jupyter labextension install jupyter-leaflet
