Todiramphus RADseq project
==================================================================================

This repository will contain a comprehensive compilation of code and expalantory visualization associated with a paper on Todiramphus radseq data

### Reference genome quality assessment
*   Quality info for our *de novo* assembled reference genome is available in the subdirectory called 'reference.genome.evaluation' including a detailed report on overall contiguity that can be viewed here:
    > <https://devonderaad.github.io/todiramphus.radseq/reference.genome.evaluation/quast_results/results_2023_03_14_08_46_42/report.html> 
    
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
    
### ADMIXTURE runs
*   Information detailing our use of the program [ADMIXTURE](https://dalexander.github.io/admixture/) on this dataset can be found here:
    > <https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/admixture>
 
 ### Pairwise divergence matrices
*   All steps involved in creating pairwise divergence matrices for both mtDNA and nDNA data are available for viewing here:
    > <https://devonderaad.github.io/todiramphus.radseq/make.pairwise.heatmaps.html>

### Species tree reconstruction
*   All input files and code necessary to reconstruct the mtDNA and nDNA species trees generated with [IQtree2](http://www.iqtree.org/) and [ASTRAL-III](https://github.com/smirarab/ASTRAL) respectively, are available here:
    > <https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/species.trees>
*   In specific, a detailed workflow showing the step-by-step process of generating gene tree alignments from filtered SNP data, generating a species tree using ASTRAL-III, and calculating gene and site condordance factors on this species tree is available [here](https://devonderaad.github.io/todiramphus.radseq/species.trees/astral.single.tip/SNPs.to.species.tree.workflow.single.tip.html).
    
 ### Compare site and gene concordance factors
*   Visualize pairwise comparisons of mtDNA and nDNA site and gene concordance factors on mtDNA and nDNA species trees:
    > <https://devonderaad.github.io/todiramphus.radseq/vis.gCFs.sCFs.html>

### Species tree reconstruction using SNAPP
*   The input .xml files and output tree and log files associated with running [SNAPP](https://academic.oup.com/mbe/article/29/8/1917/1045283) are available here:
    > <https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/snapp>
    
### Species network reconstruction
*   The input bi-allelic SNP alignments stored as nexus files and all resulting output files for running [PhyloNet](https://github.com/NakhlehLab/PhyloNet) are available here:
    > <https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/phylonet>

### ABBA/BABA tests for gene flow
*   We used [Dsuite](https://github.com/millanek/Dsuite) to perform ABBA/BABA tests for excess allele sharing between non-sister taxa across the phylogeny. The code, input files, and output files resulting from running Dsuite are all available here:
    > <https://github.com/DevonDeRaad/todiramphus.radseq/tree/main/dsuite>
    
### Species tree reconstruction with TreeMix
*   All input and output files for running TreeMix are available in the directory 'treemix'. Visualizations and code for running TreeMix can be viewed at:
    > <https://devonderaad.github.io/todiramphus.radseq/vis.treemix.results.html>
