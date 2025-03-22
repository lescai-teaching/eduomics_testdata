zcat clinvar_20250317_chr22q11-21.vcf.gz | grep -e "#" -e "Pathogenic" | grep -e "#" -e "multiple_submitters" | grep -e "#" -e "nonsense" >clinvar_20250317_chr22q11-21_nonsense-pathogenic.vcf
zcat clinvar_20250317_chr22q11-21.vcf.gz | grep -e "#" -e "Benign" | grep -e "#" -e "multiple_submitters" >clinvar_20250317_chr22q11-21_benign.vcf

python convert_vcf_to_variation.py \
-i clinvar_20250317_chr22q11-21_benign.vcf \
-o clinvar_20250317_chr22q11-21_base_variation.txt \
-n True

python convert_vcf_to_variation.py \
-i clinvar_20250317_chr22q11-21_nonsense-pathogenic.vcf \
-o clinvar_20250317_chr22q11-21_patho_variation.txt

sort -k4 -n clinvar_20250317_chr22q11-21_base_variation.txt >tmp
mv tmp clinvar_20250317_chr22q11-21_base_variation.txt
sort -k4 -n clinvar_20250317_chr22q11-21_patho_variation.txt >tmp
mv tmp clinvar_20250317_chr22q11-21_patho_variation.txt
