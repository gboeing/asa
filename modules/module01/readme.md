# Advanced Spatial Analysis
# Module 01: Getting Started

## Overview

In this module we will get set up by installing Sublime, Docker, Git, and Python.

## Reading Materials

This week's readings will take about 4.5 hours. Please set aside time accordingly to complete them *before class begins*.

  1. read the 'basics' and 'folders' sections of this short [DOS prompt guide](http://dosprompt.info/) (*optional*: Mac users, read this short [terminal guide](http://guides.macrumors.com/Terminal)) (10 minutes)
  1. read the [markdown tutorial](https://commonmark.org/help/) (15 minutes)
  1. read all the [Git guides](https://guides.github.com/) (90 minutes) then complete [Learn Git Branching](https://learngitbranching.js.org/)
  1. read [getting started with docker](https://docs.docker.com/get-started/) (75 minutes)
  1. read [getting started with conda](https://conda.io/docs/user-guide/getting-started.html), all about [conda-forge](https://conda-forge.org/), and the [JupyterLab](https://jupyterlab.readthedocs.io) 'getting started' and 'user guide' sections. (75 minutes)

If you want to install the course software on your own computer (see below for caveats and instructions), do so before the readings so you can complete the tutorials within the readings. If you are not installing the software on your own computer (i.e., if you'll be using a lab computer for this course instead), then just read through the tutorials within the readings without completing the tutorial steps.

## Before Class This Week

Lab computers are available to students in this course. They are already set up with the software we will need. This is the easiest way to get going if you're a beginner. *Please note: the instructor cannot troubleshoot installation/execution issues on your personal computer.*

However, if (and only if) you want to use your own computer in this course, you must complete the following steps in this section *before* class begins and verify that everything is fully working properly.

### 1. verify your hardware

Feel free to use your own computer in this course. But be aware that if you choose to do so, it must meet minimal hardware specifications. These are always evolving, but expect to need at least 8 GB RAM, Intel i5 or better processor, and 50 GB of free hard disk space. If your computer does not meet the minimal requirements, you must use a lab computer.

### 2. install sublime text

First we need a full-featured text editor. Download and install [Sublime Text](https://www.sublimetext.com/). We will install its Package Control and MarkdownLivePreview plugins together in class.

### 3. install docker

If you're on Windows, you must have Microsoft Windows 10 Professional or Enterprise 64-bit. If you don't, you'll need to [upgrade](https://support.microsoft.com/en-us/help/12384/windows-10-upgrading-home-to-pro) your OS.

  1. Download and install the version of [Docker Desktop](https://www.docker.com/products/docker-desktop) for your operating system.
  2. When it's finished, restart your computer.
  3. Open a terminal window and run `docker run hello-world` to test.

### 4. install git

Download and install [Git](https://git-scm.com/downloads).

### 5. install miniconda

We will install Python via the Miniconda distribution - a lightweight version of Anaconda that let's us install all of our environment's packages ourselves.

  - Download and install the Python 3.7 64-bit [Miniconda](https://conda.io/miniconda.html) installer.
  - Open a terminal window and run `conda config --add channels conda-forge`
  - Test your installation by running `conda info --all`

Create a virtual environment for the packages we'll use in this course:

  - In the terminal, run `conda create -n ppua7273 python=3 osmnx basemap pillow scikit-learn jupyterlab`
  - Then run `activate ppua7237` if you're on Windows or `source activate ppua7237` if you're on Mac.
  - Then run `python` to launch the python interpreter.
  - In the python interpreter, run `import osmnx` and verify it runs without error.
  - Create any OS environment variables as needed (this can change from time to time and could require some research on your part).