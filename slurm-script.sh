#!/bin/sh

#SBATCH -t 8:00:00

#SBATCH --mail-user=johan.larsson@stat.lu.se
#SBATCH --mail-type=ALL
#SBATCH -A lu2021-2-77

#SBATCH -J simulateddata
#SBATCH -o simulateddata_%j.out
#SBATCH -e simulateddata_%j.err

#SBATCH -N 1
#SBATCH --tasks-per-node=20

# modules
module purge

singularity run --bind results:/Project/results container.sif \
  experiments/simulateddata.R
