#!/bin/sh
#
#SBATCH --job-name=phylonet             # Job Name
#SBATCH --nodes=1             # 40 nodes
#SBATCH --ntasks-per-node=25               # 40 CPU allocation per Task
#SBATCH --partition=bi            # Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/todi.subset.2022/phylonet/bimcmc/7tip	# Set working d$
#SBATCH --mem-per-cpu=18gb            # memory requested
#SBATCH --time=5000

#which will then be run with a command like:
module load java
java -jar /home/d669d153/work/PhyloNet_3.8.0.jar 2.nex

