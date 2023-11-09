#!/usr/bin/env bash

pip install --upgrade pip
pip install ipdb ipython requests jiwer wandb wheel numpy soundfile librosa evaluate
pip install torch torchaudio --extra-index-url https://download.pytorch.org/whl/cpu
pip install torchdata accelerate tensorboard tensorflow-cpu cached-property