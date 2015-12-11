module add miniconda/2.7
conda create -p ~/nbclab-env/env pip
source activate ~/nbclab-env/env
conda install numpy libgfortran scipy sympy funcsigs cython ipython ipython-notebook matplotlib pandas numexpr scikit-learn tornado accelerate dateutil
pip install nibabel
pip install https://github.com/nipy/nipy/archive/master.zip
pip install https://github.com/nipy/nipype/archive/master.zip
pip install https://github.com/moloney/dcmstack/archive/master.zip
conda list > ~/nbclab-env/requirements.txt
