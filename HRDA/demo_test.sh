#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=100GB
#SBATCH --job-name=test_demo
#SBATCH --output=demo_test.out
#SBATCH --gres=gpu:1
module purge
module load python/intel/3.8.6
sh test.sh work_dirs/gtaHR2csHR_hrda_246ef