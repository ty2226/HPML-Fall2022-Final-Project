#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=100GB
#SBATCH --job-name=train
#SBATCH --output=train_a100.out
#SBATCH --gres=gpu:1
#SBATCH --partition=a100_1,a100_2
module purge
module load python/intel/3.8.6
python run_experiments.py --config configs/daformer/gta2cs_uda_warm_fdthings_rcs_croppl_a999_daformer_mitb5_s0.py