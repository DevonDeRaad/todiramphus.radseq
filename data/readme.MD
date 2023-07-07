Data for the manuscript 'Mitonuclear discordance results from incomplete lineage sorting, with no detectable evidence for gene flow, in a rapid radiation of Todiramphus kingfishers'.

How to access input datasets to recreate all analyses performed in this paper:
- Sample information for all 83 samples with RADseq data used in downstream analyses here can be found in the spreadsheet 'todi.retained.sampling.xlsx', where the column 'sample.id' corresponds to the name of each sample in the vcf file.
- Mitogenome alignment used for pairwise distance matrix and phylogenetic reconstruction (Figures 4A & 4C) can be found in the subdirectory 'mitogenomes'.
- Raw, unfiltered SNP dataset containing all 100 individual samples and 222,393 SNPs is named 'populations.snps.vcf.gz', and is available in the 'nuclear' folder.
- Filtered SNP dataset set at an 85% per-SNP completeness threshold, containing 83 samples and 7,430 SNPs on 1,892 loci, is named 'todi.85.vcf.gz', and is available in the 'nuclear' folder. This dataset was used as input for SplitsTree4 (Fig. 2A), StAMPP (pairwise heatmap; Fig. 4B), Dsuite (Fig. 6A).
- Filtered unlinked (> 100 bp apart in the genome) SNP dataset set at an 85% per-SNP completeness threshold, containing 83 samples and 1,892 SNPs on 1,892 loci, is named 'todi.unlinked.85.vcf.gz', and is available in the 'nuclear' folder. This dataset was used as input for TreeMix (Fig. 6B).
------------------------------------
  
Additional input files you may be looking for to recreate the analyses performed in this paper:
- The genetic diversity estimates (Fig. 2B) come from unfiltered, mapped .bam files (which include invariant sites) fed into Stacks. To recreate this you would need to pull the raw sample data from NCBI and map it to the reference genome yourself to create these .bam inputs.
- All ADMIXTURE runs have the corresponding subset vcf file used to perform the analysis in the respective subdirectory for that analysis, e.g., all files needed to recreate Figure 3A are present here: https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/admixture/no.leuco
- The input nuclear phylip alignment that was used to create gene alignments and gene trees which were input to ASTRAL (Fig. 4D & 5A) can be found here: https://github.com/DevonDeRaad/todiramphus.radseq/blob/main/species.trees/astral.single.tip/populations.all.phylip
- SNAPP (Fig. 5B) input files can be found in this subdirectory: https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/snapp
