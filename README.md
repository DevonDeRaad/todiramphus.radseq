Todiramphus RADseq project
==================================================================================

This repository will contain a comprehensive compilation of code and expalantory visualization associated with a paper on Todiramphus radseq data

### Distribution and sampling mapping
*   The process of generating maps of the sampling and general distribution for each species can be viewed here:
    > <https://devonderaad.github.io/todiramphus.radseq/todi.mapping.html> 
    
### Data generation
*   Protocols used for DNA extraction from fresh tissue samples, and RAD library prep can be found here:
    > <https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/lab.protocols>

### Sequence data to SNPs
*   Code used to map raw sequence data to the reference genome and call SNPs using the [Stacks](https://catchenlab.life.illinois.edu/stacks/) pipeline can be found here:
    > <https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/run.stacks.sh>
    
### Quality filtering raw, unfiltered SNPs
*   The entire SNP filtering process, facilitated by the R packages [vcfR](https://doi.org/10.1111/1755-0998.12549) and [SNPfiltR](https://doi.org/10.1111/1755-0998.13618) is available to view here:
    > <https://devonderaad.github.io/todiramphus.radseq/todi.filt.html>

### Population genetic analyses
*   The three descriptive pop-gen analyses performed to determine individual sample relatedness using [SplitsTree](https://doi.org/10.1093/molbev/msj030), sample clustering using [popVAE](https://github.com/kr-colab/popvae), and genetic diversity using [Stacks 'populations' module](https://catchenlab.life.illinois.edu/stacks/comp/populations.php) are available for viewing here:
    > <https://devonderaad.github.io/todiramphus.radseq/todi.popgen.html>
 
 ### Pairwise divergence matrices
*   All steps involved in creating pairwise divergence matrices for both mtDNA and nDNA data are available for viewing here:
    > <https://devonderaad.github.io/todiramphus.radseq/make.pairwise.heatmaps.html>

### Species tree reconstruction
*   All input files and code necessary to reconstruct the mtDNA and nDNA species trees generated with [IQtree2](http://www.iqtree.org/) and [ASTRAL-III](https://github.com/smirarab/ASTRAL) respectively, are available here:
    > <https://devonderaad.github.io/todiramphus.radseq/xxx>

### Species network reconstruction
*   The input gene alignments, beauti .xml files, and all resulting output files for running [SpeciesNetworks](https://academic.oup.com/mbe/article/35/2/504/4705834) via [BEAST2](https://www.beast2.org/) are available here:
    > <https://devonderaad.github.io/todiramphus.radseq/xxx>
*   This analysis was only possible because of the extensively documented tutorial for SpeciesNetworks from Michael Matschiner, which has been cloned and stably archived as part of this repository. Original version [here](https://github.com/mmatschiner/tutorials/tree/master/bayesian_analysis_of_species_networks), stably archived version [here](https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/bayesian_analysis_of_species_networks).

### ABBA/BABA tests for gene flow
*   We used [Dsuite](https://github.com/millanek/Dsuite) to perform ABBA/BABA tests for excess allele sharing between non-sister taxa across the phylogeny. The code, input files, and output files resulting from running Dsuite are all available here:
    > <https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/dsuite>



under development
