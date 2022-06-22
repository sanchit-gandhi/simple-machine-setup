# simple-machine-setup

```
yes | bash run_python.sh
source /home/sanchitgandhi/hf/bin/activate
yes | sudo bash run_disk.sh && yes | bash run.sh
bash /home/sanchitgandhi/simple-machine-setup/run_zsh.sh

```

```
# add plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

```
plugins=(git
        zsh-syntax-highlighting
        zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source ~/hf/bin/activate
```
