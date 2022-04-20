#!/usr/bin/env bash
pip install ipdb
pip install ipython
pip install requests
pip install "jax[tpu]>=0.2.16" -f https://storage.googleapis.com/jax-releases/libtpu_releases.html
pip install jiwer
pip install wandb
pip install wheel
pip install numpy==1.21
pip install soundfile
pip install librosa
pip install torch torchaudio --extra-index-url https://download.pytorch.org/whl/cpu