# simple-machine-setup

## Set-Up Instructions
1. Clone the `simple-machine-setup` repository and run the start-up script:
```
git clone https://github.com/sanchit-gandhi/simple-machine-setup.git
cd simple-machine-setup
yes | ./run_python.sh
source /home/sanchitgandhi/hf/bin/activate
yes | ./run.sh
cd /home/sanchitgandhi/simple-machine-setup
./run_zsh.sh

```

2. Configure zsh, first download plugins:
```
# add plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

Then add them to `.zshrc`:
```
plugins=(git
        zsh-syntax-highlighting
        zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source ~/hf/bin/activate

alias kill-jax="sudo lsof -t /dev/accel0 | xargs kill -9 && sudo pkill -9 python"
```

4. Login to the HuggingFace Hub and Weights and Biases
```bash
huggingface-cli login
```
```bash
wandb login
```

5. Optionally, to configure the mounted disk, run:
```bash
cd /home/sanchitgandhi/simple-machine-setup && yes | sudo ./run_disk.sh
```