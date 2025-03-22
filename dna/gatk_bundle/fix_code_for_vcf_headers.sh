bcftools view dbsnp_146.hg38_chr22q11-21.vcf.gz | \
  sed 's/##contig=<ID=chr22,length=50818468>/##contig=<ID=chr22,length=4300000>/' | \
  bcftools view -Oz -o dbsnp_146_chr22_q11-21_fixed.vcf.gz
tabix -p vcf dbsnp_146_chr22_q11-21_fixed.vcf.gz


bcftools view Mills_and_1000G_gold_standard.indels.hg38_chr22q11-21.vcf.gz | \
  sed 's/##contig=<ID=chr22,length=50818468>/##contig=<ID=chr22,length=4300000>/' | \
  bcftools view -Oz -o Mills_and_1000G_gold_standard.indels.hg38_chr22q11-21_fixed.vcf.gz
tabix -p vcf Mills_and_1000G_gold_standard.indels.hg38_chr22q11-21_fixed.vcf.gz
