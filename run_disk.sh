#!/usr/bin/env bash

cd /home/sanchitgandhi/
mkfs.ext4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb
mkdir -p /home/sanchitgandhi/cache
mount -o discard,defaults /dev/sdb /home/sanchitgandhi/cache
chmod a+w /home/sanchitgandhi/cache
