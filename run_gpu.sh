#!/usr/bin/env bash


#conda init bash
#bash

conda create -n hf python=3.9
conda activate hf

#!/usr/bin/env bash
pip install ipdb
pip install ipython
pip install jiwer
pip install wandb
pip install soundfile
pip install librosa
pip install bitsandbytes-cuda113
pip install datasets
pip install transformers

wandb login bdc4b72530c041c0a5249301fbb957674970785c

conda install pytorch torchaudio cudatoolkit=11.3 -c pytorch

sudo apt-get install -y libsndfile1 ffmpeg
git clone https://github.com/NVIDIA/NeMo
cd NeMo && pip install -e .

conda remove numba
pip uninstall numba
conda install -c conda-forge numba

# check CUDA & bnb installation
wget https://gist.githubusercontent.com/TimDettmers/1f5188c6ee6ed69d211b7fe4e381e713/raw/4d17c3d09ccdb57e9ab7eca0171f2ace6e4d2858/check_bnb_install.py
python -c "import torch; print('CUDA:', torch.cuda.is_available())"
python check_bnb_install.py