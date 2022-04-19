#!/usr/bin/env bash
cd /home/sanchitgandhi

git clone https://github.com/sanchit-gandhi/transformers.git
git clone https://github.com/huggingface/datasets.git

cd /home/sanchitgandhi/transformers && git remote add upstream https://github.com/huggingface/transformers.git && pip install -e ".[flax]"
cd /home/sanchitgandhi/datasets && pip install -e ".[streaming]"

# chex is broken with latest release of JAX - install from head
pip uninstall chex
pip install git+https://github.com/deepmind/chex.git --upgrade --no-cache