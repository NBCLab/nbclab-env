#!/bin/bash
module add miniconda/2.7
conda create -p /home/data/nbc/nbclab-env/env pip
source activate /home/data/nbc/nbclab-env/env
conda install numpy libgfortran sympy ply funcsigs cython ipython ipython-notebook matplotlib seaborn pandas numexpr scikit-learn tornado accelerate Biopython dateutil
pip install nibabel pyyaml ipywidgets
pip install https://github.com/nipy/nipy/archive/master.zip
pip install https://github.com/moloney/dcmstack/archive/master.zip
pip install nipype qap
conda install scipy=0.17.1
conda list > /home/data/nbc/nbclab-env/requirements.txt
