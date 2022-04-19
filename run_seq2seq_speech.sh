#!/usr/bin/env bash
cd /home/sanchitgandhi

git clone https://github.com/sanchit-gandhi/seq2seq-speech.git

cd /home/sanchitgandhi

git lfs install
git clone https://huggingface.co/sanchit-gandhi/flax-wav2vec2-2-bart-large
git clone https://huggingface.co/sanchit-gandhi/flax-wav2vec2-2-bart-debug
git clone https://huggingface.co/sanchit-gandhi/flax-wav2vec2-2-bart-dummy

ln -s /home/sanchitgandhi/seq2seq-speech/* /home/sanchitgandhi/flax-wav2vec2-2-bart-large
ln -s /home/sanchitgandhi/seq2seq-speech/* /home/sanchitgandhi/flax-wav2vec2-2-bart-debug
ln -s /home/sanchitgandhi/seq2seq-speech/* /home/sanchitgandhi/flax-wav2vec2-2-bart-dummy
