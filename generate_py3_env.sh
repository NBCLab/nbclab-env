#!/bin/bash
module add miniconda/3
conda create -p /home/data/nbc/data-analysis/env3 pip python=3.6
source activate /home/data/nbc/data-analysis/env3
conda install numpy scipy libgfortran sympy ply funcsigs cython ipython ipython-notebook matplotlib seaborn pandas numexpr scikit-learn tornado accelerate Biopython dateutil nibabel nipy nipype pyyaml ipywidgets
pip install https://github.com/moloney/dcmstack/archive/master.zip
pip install pip -U
conda list > /home/data/nbc/data-analysis/requirements_py3.txt
