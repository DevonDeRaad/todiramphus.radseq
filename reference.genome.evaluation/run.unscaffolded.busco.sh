#!/bin/sh
#
#SBATCH --job-name=busco                           #Job Name
#SBATCH --nodes=1                                       #Request number of nodes
#SBATCH --cpus-per-task=25                             #CPU allocation per Task
#SBATCH --partition=sixhour                                  #Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/todi.subset.2022/busco    	  #Set working directory
#SBATCH --mem-per-cpu=10gb                               #Memory requested
#SBATCH --time=360                                    #Time requested

#run busco
module load anaconda
conda deactivate
conda activate busco
busco -i Tchloris.1.fasta -l aves_odb10 -m genome -o unscaffolded -c 25 --augustus
