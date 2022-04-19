#!/usr/bin/env bash

cd /home/sanchitgandhi/
sudo mkfs.ext4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb
sudo mkdir -p /home/sanchitgandhi/cache
sudo mount -o discard,defaults /dev/sdb /home/sanchitgandhi/cache
sudo chmod a+w /home/sanchitgandhi/cache
