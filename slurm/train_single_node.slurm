#!/bin/bash
#SBATCH --job-name=levjepa
#SBATCH --partition=all
#SBATCH --account=levjepa
#SBATCH --nodes=1
#SBATCH --gres=gpu:h100:8
#SBATCH --ntasks-per-node=8
#SBATCH --cpus-per-task=8
#SBATCH --time=336:00:00
#SBATCH --output=logs/%j.out
#SBATCH --error=logs/%j.err

export STABLEWM_HOME=/mnt/vast/workspaces/LeVJEPA/data

nvidia-smi

uv run python train.py data=pusht "$@"
