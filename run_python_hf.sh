#!/usr/bin/env bash
cd /home/sanchitgandhi

git clone https://github.com/sanchit-gandhi/transformers.git
git clone https://github.com/huggingface/datasets.git

cd /home/sanchitgandhi/transformers && git remote add upstream https://github.com/huggingface/transformers.git
cd /home/sanchitgandhi/datasets && git remote add upstream https://github.com/huggingface/datasets.git

cd /home/sanchitgandhi/transformers && git pull upstream main && pip install -e ".[flax]"
cd /home/sanchitgandhi/datasets && git pull upstream main && pip install -e ".[streaming]"

# transformers has jax pinned to 3.9.0 so we need to re-install it with an updated version
pip install --upgrade "jax[tpu]" -f https://storage.googleapis.com/jax-releases/libtpu_releases.html
pip install --upgrade flax optax chex

# librosa (numba) is incompatible with the latest numpy version so we pin it
pip install numpy==1.23.5

# just pip install evaluate
pip install --upgrade evaluate
