#!/usr/bin/env bash
git config --global credential.helper store

git config --global user.email "sanchit@huggingface.co"
git config --global user.name "Sanchit Gandhi"
git config --global alias.lol "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
