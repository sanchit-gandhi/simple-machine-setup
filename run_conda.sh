cd /home/sanchitgandhi

# download miniconda
mkdir -p miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda3/miniconda.sh
bash miniconda3/miniconda.sh -b -u -p miniconda3
rm -rf miniconda3/miniconda.sh
miniconda3/bin/conda init bash
miniconda3/bin/conda init zsh

# restart shell for changes to take effect
zsh

# create env
conda create -n conda-hf python=3.9
conda activate conda-hf

# pip-install all packages as before
./run_python_packages.sh
./run_python_hf.sh