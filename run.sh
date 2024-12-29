#!/bin/bash
config_Nsamples=("lego-nsamples=32.txt" "lego.txt" "lego-nsamples=128.txt" 
                 "fern-nsample=32.txt" "fern.txt" "fern-nsample=128.txt")
                 
config_Nimps=("lego-nimp=32.txt" "lego-nimp=64.txt" "fern-nimp=32.txt" "fern-nimp=128.txt")

for f in "${config_Nsamples[@]}"; do
  python run_nerf.py --config "configs/$f"
done

for f in "${config_Nimps[@]}"; do
  python run_nerf.py --config "configs/$f"
done
