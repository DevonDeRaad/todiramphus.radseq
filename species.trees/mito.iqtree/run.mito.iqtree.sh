#!/bin/sh
#
#SBATCH --job-name=todi.mt.iqtree               # Job Name
#SBATCH --nodes=1             # 40 nodes
#SBATCH --ntasks-per-node=15               # 40 CPU allocation per Task
#SBATCH --partition=bi            # Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/todi.subset.2022/uce.mito	# Set working d$
#SBATCH --mem-per-cpu=2gb            # memory requested
#SBATCH --time=2000


# infer the concatentated tree with 1000 ultrafast bootstraps and an edge-linked fully-partitioned model (-p is the same as -spp from version 1.7 onwards) 
/home/d669d153/work/iqtree-2.2.0-Linux/bin/iqtree2 -s todi.mito.alignment.nex -p todi.mito.alignment.nex --prefix concat -o todiramphus_leucopygius_amnhdot6658 -bb 1000 -nt AUTO

# infer the 88 single-locus trees
/home/d669d153/work/iqtree-2.2.0-Linux/bin/iqtree2 -s todi.mito.alignment.nex -S todi.mito.alignment.nex --prefix loci -nt AUTO

# calculate concordance factors
/home/d669d153/work/iqtree-2.2.0-Linux/bin/iqtree2 -t concat.treefile --gcf loci.treefile -s todi.mito.alignment.nex --scf 100 --prefix concord
