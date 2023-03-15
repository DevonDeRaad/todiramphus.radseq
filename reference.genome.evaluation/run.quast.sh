#!/bin/sh
#
#SBATCH --job-name=quast                           #Job Name
#SBATCH --nodes=1                                       #Request number of nodes
#SBATCH --cpus-per-task=10                             #CPU allocation per Task
#SBATCH --partition=sixhour                                  #Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/todi.subset.2022/quast        #Set working directory
#SBATCH --mem-per-cpu=10gb                               #Memory requested
#SBATCH --time=360 

module load anaconda
python /home/d669d153/work/quast-5.0.2/quast.py Tchloris.1.fasta -t 10