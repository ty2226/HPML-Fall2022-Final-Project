#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --mem=100GB
#SBATCH --job-name=train
#SBATCH --output=train.out
#SBATCH --gres=gpu:1
module purge
module load python/intel/3.8.6
python run_experiments.py --config configs/hrda/gtaHR2csHR_hrda.py

