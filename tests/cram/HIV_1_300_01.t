Sanity test:
  $ haploclique_output_path=${HOME}/${CIRCLE_PROJECT_REPONAME}/tests/data/simulation
  $ cd $haploclique_output_path
  $ haploclique_exe_path=../../../build/src
  $ /home/ubuntu/haploclique/build/src/haploclique reads_HIV-1_150_01.bam > /dev/null;
  $ awk '{idx=index($0, ">"); ID=$1; getline SEQ; printf("%s\t%s\n", ID, SEQ);}' quasispecies_HIV-1_150.fasta.fasta | sort -k1d,1 | awk -F"\t" '{printf("%s\n%s\n", $1,$2)}' > quasispecies_HIV_1_150_01_defaultParam_sorted.fasta.fasta
  $ awk '{idx=index($0, ">"); ID=$1; getline SEQ; printf("%s\t%s\n", ID, SEQ);}' quasispecies.fasta.fasta | sort -k1d,1 | awk -F"\t" '{printf("%s\n%s\n", $1,$2)}' > quasispecies_sorted.fasta.fasta
  $ diff quasispecies_sorted.fasta.fasta quasispecies_HIV_1_150_01_defaultParam_sorted.fasta.fasta > out.txt;
  $ head -100 quasispecies_HIV_1_150_01_defaultParam_sorted.fasta.fasta
  $ head -100 quasispecies_sorted.fasta.fasta
  $ head -20 out.txt
  $ rm quasispecies_sorted.fasta.fasta quasispecies.fasta.fasta quasispecies_HIV_1_150_01_defaultParam_sorted.fasta.fasta
  $ if [ -s out.txt ]; then echo "Different"; else echo "Same"; fi;
  Same
  $ rm out.txt
