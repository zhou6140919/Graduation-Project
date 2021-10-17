#!/bin/bash
#SBATCH -p JX-GPU
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -J oneie
#SBATCH --cpus-per-task=4
#SBATCH --gpus-per-task=1
#SBATCH --mem-per-gpu=32G
#SBATCH -o slurm-%j.out

srun python train.py -c config/example.json

