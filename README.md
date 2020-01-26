# Population structure analysis using RNA-seq data

Eulimnogammarus verrucosus is an endemical amphipod species of lake Baikal. Its population structure seems to be complicated (Gurkov et al. 2019). In this study, transcriptomic data of 63 animals collected in Bolshie Koty was attached to previous data. COI gene of the mitochondrial sequence and 18s rRNA were used. 
Bowtie2 2.1.0 was used for alignment, consensuses were made using samtools 0.1.19, nets were built with SplitsTree 4.15.1 and visualized with R package phangorn.
New data is consistent with the previous. All 18s marker sequences were identical. RNA-seq can be used for population structure studies but it is important to have a suitable reference and it is better to use protein-coding sequences.

In **NOTEBOOK** you can find a detailed description of the analysis methods used. There are also:
 - **readstovars.sh** - a script used for alignment and variant calling
 - **color_network.R** - R script used for visualizing of nets 
 - fastqc reports about reads quality before and after trimming for the whole dataset and for aligned at COI.
 - qualimap reports of alignment quality after different parameters of alignment.

