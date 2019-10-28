!#bin/bash


for i in `ls /media/tertiary/transcriptome_raw/Eulimnogammarus_verrucosus`; do
bowtie2 -x coi100 -1 /media/tertiary/transcriptome_raw/Eulimnogammarus_verrucosus/$i/$i"._R1.fastq.gz" -2 /media/tertiary/transcriptome_raw/Eulimnogammarus_verrucosus/$i/$i"._R2.fastq.gz" --no-unal --very-fast-local -S $i.sam ;
samtools view -S -b $i.sam > $i.bam;
samtools sort $i.bam  "$i"_sorted ;
samtools mpileup -g -f COI100.fasta "$i"_sorted.bam > $i.mpileup ;
bcftools view -c $i.mpileup > $i.vcf ;
vcfutils.pl vcf2fq  $i.vcf >> Eve_csn.fastq ;
done







