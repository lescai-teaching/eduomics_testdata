seqToProfile \
-b /home/tutors/shared_didattica/simulations/eduomics_local_work/eduomics_testdata/dna/align_wgsim/wgsim_chr22q11-21_recal.bam \
-v /home/tutors/shared_didattica/simulations/eduomics_local_work/eduomics_testdata/dna/align_wgsim/wgsim_chr22q11-21.vcf \
-t /home/tutors/shared_didattica/simulations/eduomics_local_work/eduomics_testdata/dna/Twist_Exome_Target2_chr22q11-21_GRCh38_500pad.bed \
-r /home/tutors/shared_didattica/simulations/eduomics_local_work/eduomics_testdata/dna/chr22_q11-21_GRCh38.fasta \
-k 2 -B 50 \
>chr21_q11-21_test.profile
