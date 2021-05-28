#!/bin/sh

#SBATCH -t 1:00:00

#SBATCH --mail-user=johan.larsson@stat.lu.se
#SBATCH --mail-type=ALL

#SBATCH -J simulation
#SBATCH -o simulation_%j.out
#SBATCH -e simulation_%j.err

#SBATCH -N 1
#SBATCH --tasks-per-node=20

# modules
module purge

singularity run --bind results:/Project/results container.sif \
  experiments/experiment.R
