#!/usr/bin/env bash
chmod u+x run*
./run_git.sh
./run_python.sh
source ~/hf/bin/activate
./run_python_packages.sh
./run_python_hf.sh
./run_bash.sh
./run_other_apt.sh
./run_seq2seq_speech.sh
./run_zsh.sh
