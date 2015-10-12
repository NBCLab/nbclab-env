module add miniconda/2.7
conda create -p /home/data/nbc/adhd/adhd/envs/ADHD pip numpy scipy sympy funcsigs
source activate /home/data/nbc/adhd/adhd/envs/ADHD
conda install cython ipython ipython-notebook matplotlib pandas numexpr scikit-learn tornado accelerate dateutil
pip install nibabel
pip install https://github.com/nipy/nipy/archive/master.zip
pip install https://github.com/nipy/nipype/archive/master.zip
pip install https://github.com/moloney/dcmstack/archive/master.zip
conda remove --features mkl
conda env export > /home/data/nbc/adhd/adhd/envs/environment.yml
