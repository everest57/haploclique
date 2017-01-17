Sanity test:
  $ haploclique_output_path=${HOME}/${CIRCLE_PROJECT_REPONAME}/tests/data/simulation
  $ pwd
  $ cd $haploclique_output_path
  $ haploclique_exe_path=../../../build/src
  $ ./$haploclique_exe_path/haploclique -q 0.85 -k 0.85 -g 0.8  -o 0.6 -j 0.5 -n -s 4 reads_HIV-1_300_01.bam > /dev/null
  > diff quasispecies.fasta.fasta quasispecies_HIV-1_300_01.fasta.fasta > out.txt;
  > rm quasispecies.fasta.fasta
  > if [ -s out.txt ]; then echo "Different"; else echo "Same"; fi;
  Same
