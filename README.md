# Population structure analysis using RNA-seq data

Eulimnogammarus verrucosus is an endemical amphipod species of lake Baikal. Its population structure seems to be complicated (Gurkov et al. 2019). In this study, transcriptomic data of 63 animals collected in Bolshie Koty was attached to the previous data. Mitochondrial COI gene and 18S rRNA were used. 

Bowtie2 2.1.0 was used for alignment, consensus sequences were constructed using samtools 0.1.19, phylogenetic networks were built with SplitsTree 4.15.1 and visualized with phangorn R package.

New data is consistent with the previous. All 18s marker sequences were identical. RNA-seq can be used for population structure studies but it is important to have a suitable reference and it is better to use protein-coding sequences.

In **NOTEBOOK** you can find a detailed description of the analysis methods used. There are also:
 - **readstovars.sh** - a script used for alignment and variant calling
 - **color_network.R** - R script used for visualizing of nets 
 - **reports** contain 
 - 1) FastQC reports about reads before and after trimming, for the whole dataset and for aligned at COI. 
 - 2) Qualimap alignment quality reports after different parameters of alignment.

## References

1. Andrews, S.: FASTQC. A quality control tool for high throughput sequence data, 2010 
2. Drozdova, P., Rivarola-Duarte, L., Bedulina, D. et al. Comparison between transcriptomic responses to short-term stress exposures of a common Holarctic and endemic Lake Baikal amphipods. BMC Genomics 20, 712 (2019). https://doi.org/10.1186/s12864-019-6024-3
3. García-Alcalde F et al. "Qualimap: evaluating next-generation sequencing alignment data." Bioinformatics 28, no. 20 (2012): 2678-2679.
doi: 10.1093/bioinformatics/bts503
4. Gurkov, A., Rivarola-Duarte, L., Bedulina, D. et al. Indication of ongoing amphipod speciation in Lake Baikal by genetic structures within endemic species. BMC Evol Biol 19, 138 (2019). https://doi.org/10.1186/s12862-019-1470-8
5. Huson DH, SplitsTree: analyzing and visualizing evolutionary data., Bioinformatics, Volume 14, Issue 1, 1998, Pages 68–73, https://doi.org/10.1093/bioinformatics/14.1.68
6. Langmead B, Salzberg S. Fast gapped-read alignment with Bowtie 2. Nature Methods. 2012, 9:357-359.
7. Li H A statistical framework for SNP calling, mutation discovery, association mapping and population genetical parameter estimation from sequencing data. Bioinformatics. 2011 Nov 1;27(21):2987-93. Epub 2011 Sep 8.
8. Okonechnikov K, Golosova O, Fursov M, the UGENE team. Unipro UGENE: a unified bioinformatics toolkit. Bioinformatics 2012 28: 1166-1167. doi:10.1093/bioinformatics/bts091 
Schliep, K., Potts, A. J., Morrison, D. A., Grimm, G. W. (2017), Intertwining phylogenetic trees and networks. Methods in Ecology and Evolution, 8: 1212--1220.

