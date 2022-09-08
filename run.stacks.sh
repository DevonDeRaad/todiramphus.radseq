#!/bin/sh
#
#SBATCH --job-name=radseq.todi              # Job Name
#SBATCH --nodes=1             # 40 nodes
#SBATCH --ntasks-per-node=10              # 10 CPU allocation per Task
#SBATCH --partition=bi            # Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/todi.subset.2022  # Set working d$
#SBATCH --mem-per-cpu=5gb            # memory requested
#SBATCH --time=10000

files="T_albicilla_22581
T_albicilla_22591
T_albicilla_22592
T_albicilla_22603
T_albicilla_22611
T_albicilla_85104
T_albicilla_85105
T_chloris_12584
T_chloris_12606
T_chloris_13960
T_chloris_14446
T_chloris_20983
T_chloris_22075
T_chloris_23253
T_chloris_23630
T_chloris_23631
T_chloris_23632
T_chloris_23690
T_chloris_24382
T_chloris_24727
T_chloris_67535_run1
T_chloris_76183_run1
T_colonus_2003071
T_colonus_2003089
T_colonus_2003097
T_colonus_2004070
T_leucopygius_15882
T_leucopygius_15901
T_leucopygius_32019
T_leucopygius_32037
T_leucopygius_34505
T_leucopygius_34508
T_leucopygius_DOT6654
T_sanctus_14877
T_sanctus_14879
T_sanctus_24565
T_sanctus_25117
T_sanctus_33267
T_sanctus_34636
T_sanctus_34659
T_sanctus_35549
T_sanctus_72545
T_sanctus_7567
T_sanctus_76296
T_sanctus_B29435
T_sanctus_B32637
T_sanctus_B32671
T_sanctus_B33128
T_sanctus_B33280
T_sanctus_B34636
T_sanctus_B34659
T_sanctus_B34946
T_sanctus_B43266
T_sanctus_B45812
T_sanctus_B50292
T_sanctus_B50543
T_sanctus_B51072
T_sanctus_B52989
T_sanctus_B53055
T_sanctus_B53068
T_sanctus_B54673
T_sanctus_B57402
T_sanctus_B59372
T_sanctus_B60180
T_sanctus_B60181
T_sanctus_B60182
T_sanctus_B60183
T_sanctus_B60184
T_saurophagus_18929
T_saurophagus_27804
T_saurophagus_36179
T_saurophagus_36283
T_saurophagus_36284
T_saurophagus_60326
T_saurophagus_69666
T_sordidus_B33717
T_sordidus_B33718
T_sordidus_B33719
T_sordidus_B33720
T_sordidus_B44198
T_sordidus_B44295
T_sordidus_B44296
T_sordidus_B51462
T_tristrami_18953
T_tristrami_27723
T_tristrami_27752
T_tristrami_27753
T_tristrami_27792
T_tristrami_27793
T_tristrami_27812
T_tristrami_27857
T_tristrami_32049
T_tristrami_33253
T_tristrami_33839
T_tristrami_33858
T_tristrami_33864
T_tristrami_33867
T_tristrami_33895
T_tristrami_36188
T_tristrami_6704"

#index ref
#/panfs/pfs.local/work/bi/bin/bwa/bwa index pseudochromosomes.fasta

#Align paired-end data with BWA, convert to BAM and SORT.
for sample in $files
do 
    /panfs/pfs.local/work/bi/bin/bwa/bwa mem -t 10 pseudochromosomes.fasta fastq/${sample}.fq.gz |
      /panfs/pfs.local/work/bi/bin/samtools-1.3.1/bin/samtools view -b |
      /panfs/pfs.local/work/bi/bin/samtools-1.3.1/bin/samtools sort > fastq/${sample}.bam
done


#Run gstacks to build loci from the aligned paired-end data.
#We have instructed gstacks to remove any PCR duplicates that it finds.
/home/d669d153/work/stacks-2.41/gstacks -I ./fastq -M todi.popmap.txt -O ./fastq -t 10

# Run populations and export a vcf. Do filtering steps on the output vcf.
/home/d669d153/work/stacks-2.41/populations -P ./fastq -M todi.popmap.txt -O . --vcf -t 10
