#!/bin/bash

data_used=$(/usr/bin/nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits)
used_gb=$((data_used / 1024))

printf "%d GB" "$used_gb"
