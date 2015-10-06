module add miniconda/2.7
conda create -p /home/data/nbc/adhd/adhd/.env/python_environment pip numpy scipy sympy
source activate /home/data/nbc/adhd/adhd/.env/python_environment
pip install nibabel
pip install https://github.com/nipy/nipy/archive/master.zip
pip install https://github.com/nipy/nipype/archive/master.zip
conda install cython ipython ipython-notebook gcc matplotlib pandas numexpr scikit-learn tornado accelerate dateutil
pip install https://github.com/moloney/dcmstack/archive/master.zip
