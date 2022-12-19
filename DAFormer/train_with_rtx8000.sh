#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=100GB
#SBATCH --job-name=train_with_rtx8000
#SBATCH --output=train_with_rtx8000.out
#SBATCH --gres=gpu:1
#SBATCH --partition=rtx8000
module purge
module load python/intel/3.8.6
python run_experiments.py --config configs/hrda/gtaHR2csHR_hrda.py