#!/bin/bash
#SBATCH --job-name=levjepa
#SBATCH --partition=all
#SBATCH --account=levjepa
#SBATCH --nodes=1
#SBATCH --gres=gpu:h100:8
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=64
#SBATCH --time=336:00:00
#SBATCH --output=logs/%j.out
#SBATCH --error=logs/%j.err

export STABLEWM_HOME=/mnt/vast/workspaces/LeVJEPA/data

uv run python train.py data=pusht "$@"
