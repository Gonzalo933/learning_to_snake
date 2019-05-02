#!/bin/bash

#SBATCH -e logs/snake.err
#SBATCH -o logs/snake.out
#SBATCH -J snake

#SBATCH --partition=cccmd
#SBATCH --mem=5G
#SBATCH --cpu-freq=high
#SBATCH --cpus-per-task=2
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=gonzalo.hernandez@uam.es
#SBATCH --account=ada2_serv

set -eo pipefail -o nounset


###
python main.py 0
