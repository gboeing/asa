# Advanced Spatial Analysis
# Module 00: Getting Started

## Overview

In this module we will go over the syllabus and introduce Sublime, Docker, Git, and Python.

## Reading Materials

Please set aside time early this week to complete these readings *before class*. It'll be a lot to process initially but it's essential to have familiarity with these tools and concepts as we begin the semester.

  1. read the 'basics' and 'folders' sections of this short [DOS prompt guide](http://dosprompt.info/) (*optional*: Mac users, read this short [terminal guide](http://guides.macrumors.com/Terminal))
  1. read this short [markdown tutorial](https://commonmark.org/help/)
  1. read [getting started with conda](https://conda.io/docs/user-guide/getting-started.html), all about [conda-forge](https://conda-forge.org/), and the [JupyterLab](https://jupyterlab.readthedocs.io) 'getting started' and 'user guide' sections. (budget about 75 minutes)
  1. read the short [Git handbook](https://guides.github.com/introduction/git-handbook/)
  1. read [getting started with docker](https://docs.docker.com/get-started/)

If you want to install the course software on your own computer (see below for caveats and instructions), do so before the readings so you can complete the tutorials within the readings. If you are not installing the software on your own computer (i.e., if you'll be using a lab computer for this course instead), then just read through the tutorials within the readings without completing the tutorial steps.

## Before Class This Week

Read the reading materials above.

Lab computers are available to students in this course. They are already set up with the software we will need. This is the easiest way to get going if you're a beginner. *Please note: the instructor cannot troubleshoot installation/execution issues on your own personal computer.*

However, if (and only if) you want to use your own computer in this course, you must complete the following steps in this section *before* class begins and verify that everything is fully working properly.

### 1. verify your hardware

Feel free to use your own computer in this course. But be aware that if you choose to do so, it must meet minimal hardware specifications. These are always evolving, but expect to need at least 8 GB RAM, Intel i5 or better processor, and 50+ GB of free hard disk space. If your computer does not meet the minimal requirements, you must use a lab computer.

### 2. install sublime text

First we need a full-featured text editor. Download and install [Sublime Text](https://www.sublimetext.com/). We will install its Package Control and MarkdownLivePreview plugins together in class.

### 3. install docker

If you're on Windows, you must have Microsoft Windows 10 Professional or Enterprise 64-bit. If you don't, you'll need to [upgrade](https://support.microsoft.com/en-us/help/12384/windows-10-upgrading-home-to-pro) your OS.

  1. Download and install the version of [Docker Desktop](https://www.docker.com/products/docker-desktop) for your operating system.
  2. When it's finished, restart your computer.
  3. Open a terminal window and run `docker login` to sign in to docker hub
  4. Run `docker run hello-world` to check that everything works

### 4. install git

Download and install [Git](https://git-scm.com/downloads).

### 5. install miniconda

We will install Python via the Miniconda distribution - a lightweight version of Anaconda that lets us install all of our environment's packages ourselves.

  - Download and install the Python 3.7 64-bit [Miniconda](https://conda.io/miniconda.html) installer.
  - Install it into `C:\Anaconda` (rather than the default), and when prompted, make it the system default python and add it to the PATH
  - Open a terminal window and run `conda config --add channels conda-forge --force`
  - Update default packages `conda update --all`
  - Test your installation by running `conda info --all`

Create a virtual environment for the packages we'll use in this course:

  - In the terminal, run `conda create -n ppua7237 -c conda-forge --yes python=3 beautifulsoup4 bokeh bottleneck cartopy cython folium geopandas ipyleaflet ipywidgets jupyterlab networkx nodejs notebook numexpr numpy osmnx pillow scikit-learn scipy seaborn statsmodels xlrd xlwt`
  - Then run `activate ppua7237` if you're on Windows or `source activate ppua7237` if you're on Mac.
  - Install this extension `jupyter labextension install @jupyter-widgets/jupyterlab-manager`
  - Then install this extension `jupyter labextension install jupyter-leaflet`
  - Then run `python` to launch the python interpreter.
  - In the python interpreter, run `import osmnx` and verify it runs without error.
  - Create any OS environment variables as needed (this can change from time to time and could require some platform-specific research on your part).

## In Class This Week

We'll have a short class session this week. First we'll go over the syllabus. Then we'll discuss the course's approach to coding and spatial data analysis and introduce some of the course software. In the remaining time I can answer any questions or concerns and then we'll do some in-class exercises to give you some initial familiarity with the course software, including https://learngitbranching.js.org/
