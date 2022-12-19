#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=100GB
#SBATCH --job-name=test_use_trained_model_rtx8000
#SBATCH --output=test_use_trained_model_rtx8000.out
#SBATCH --gres=gpu:1
#SBATCH --partition=rtx8000
module purge
module load python/intel/3.8.6
sh test.sh work_dirs/local-basic/221202_1429_gta2cs_uda_warm_fdthings_rcs_croppl_a999_daformer_mitb5_s0_b3b71