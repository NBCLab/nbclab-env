module add miniconda/2.7
conda create -p /home/data/nbc/physics-learning/env pip
source activate /home/data/nbc/physics-learning/env
conda install numpy libgfortran scipy sympy funcsigs cython ipython ipython-notebook matplotlib pandas numexpr scikit-learn tornado accelerate dateutil pydicom
pip install nibabel
pip install https://github.com/nipy/nipy/archive/master.zip
pip install https://github.com/nipy/nipype/archive/master.zip
pip install https://github.com/moloney/dcmstack/archive/master.zip
conda list > /home/data/nbc/physics-learning/requirements.txt
