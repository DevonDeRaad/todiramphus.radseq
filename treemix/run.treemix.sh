#!/bin/sh
#
#SBATCH --job-name=treemix              # Job Name
#SBATCH --nodes=1             # 40 nodes
#SBATCH --ntasks-per-node=1               # 40 CPU allocation per Task
#SBATCH --partition=sixhour            # Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/todi.subset.2022/treemix     # Set working d$
#SBATCH --mem-per-cpu=5gb           # memory requested
#SBATCH --time=100

#convert vcf into treemix file
#/home/d669d153/work/stacks-2.41/populations --in_vcf todi.unlinked.85.vcf -O . --treemix -M 8spec.map.txt
#remove stacks header
#echo "$(tail -n +2 todi.unlinked.85.p.treemix)" > todi.unlinked.85.p.treemix
#gzip file for input to treemix
#gzip todi.unlinked.85.p.treemix

#run treemix with m0
/panfs/pfs.local/work/bi/bin/treemix-1.13/src/treemix -i todi.unlinked.85.p.treemix.gz -root leucopygius -o treem0

#add 1 migration edge
/panfs/pfs.local/work/bi/bin/treemix-1.13/src/treemix -i todi.unlinked.85.p.treemix.gz -m 1 -g treem0.vertices.gz treem0.edges.gz -o treem1

#add 2 migration edges
/panfs/pfs.local/work/bi/bin/treemix-1.13/src/treemix -i todi.unlinked.85.p.treemix.gz -m 1 -g treem1.vertices.gz treem1.edges.gz -o treem2

#add 3 migration edges
/panfs/pfs.local/work/bi/bin/treemix-1.13/src/treemix -i todi.unlinked.85.p.treemix.gz -m 1 -g treem2.vertices.gz treem2.edges.gz -o treem3
