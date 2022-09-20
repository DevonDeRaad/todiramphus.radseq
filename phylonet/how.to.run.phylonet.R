
#make bimcmc input
library(vcfR)
library(SNPfiltR)
#read in unlinked vcf
v<-read.vcfR("~/Desktop/todi.2022/todi.unlinked.85.vcf")
#prune vcf to only relevant single tips
v<-v[,c(1,5,8,19,30,58,66,73)]
#remove invariant sites
colnames(v@gt)
v<-min_mac(v, min.mac = 1)
v
#write to disk
#vcfR::write.vcf(v, file="~/Desktop/todi.2022/reduced.vcf.gz")

#use PGDspider to convert this vcf to a binary nexus file for input to phylonet

#add this phylonet chunk to bottom of nex (uncommented)

#;End;
#
#BEGIN PHYLONET;
#MCMC_BiMarkers -cl 500000 -bl 200000 -sf 500 -diploid -op -mr 2 -pl 15
#-sd 12345678
#
#END;

#run phylonet on the cluster using this command
#which will then be run with a command like:
#module load java
#java -jar /home/d669d153/work/PhyloNet_3.8.0.jar reduced.phylonet.nex


#make infer_MPL input
#read in gene trees inferred by iqtree2
library(phytools)
x<-phytools::read.newick("~/Downloads/ml_best.trees")

#remove branch lengths
for (i in 1:length(x)){
  x[[i]]$edge.length<-NULL
}

#write to file
write.tree(x, file="~/Downloads/todi.nobrlens.nex")

#make nexus input that looks like this:
#NEXUS

BEGIN TREES;

Tree gt1 = ((C,((B,D),A)),E);
Tree gt2 = (B,(D,(C,(A,E))));
......
Tree gt200 = (D,((B,E),(C,A)));

END;

BEGIN PHYLONET;

InferNetwork_MP (all) 2 -pl 15;

END;

#which will then be run with a command like:
module load java
java -jar /home/d669d153/work/PhyloNet_3.8.0.jar mpl.2retic.nex
