gatk --java-options "-Xmx4g" HaplotypeCaller  \
   -R ../chr22_q11-21_GRCh38.fasta \
   -I wgsim_chr22q11-21_recal.bam \
   -O wgsim_chr22q11-21.g.vcf.gz \
   -ERC GVCF

mkdir -p tmp

gatk --java-options "-Xmx4g -Xms4g" GenomicsDBImport \
      -V wgsim_chr22q11-21.g.vcf.gz \
      --genomicsdb-workspace-path var_db \
      --tmp-dir ./tmp \
      -L chr22

gatk --java-options "-Xmx4g" GenotypeGVCFs \
   -R ../chr22_q11-21_GRCh38.fasta \
   -V gendb://var_db \
   --dbsnp ../gatk_bundle/dbsnp_146_chr22_q11-21_fixed.vcf.gz \
   -O wgsim_chr22q11-21.vcf.gz


rm -rf tmp
rm -rf var_db
