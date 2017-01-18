Sanity test:
  $ haploclique_output_path=${HOME}/${CIRCLE_PROJECT_REPONAME}/tests/data/simulation
  $ cd $haploclique_output_path
  $ haploclique_exe_path=../../../build/src
  $ /home/ubuntu/haploclique/build/src/haploclique reads_HIV_1_300_01.bam > /dev/null;
  $ diff quasispecies.fasta.fasta quasispecies_HIV_1_300_01_defaultParam.fasta.fasta > out.txt;
  $ rm quasispecies.fasta.fasta;
  $ if [ -s out.txt ]; then echo "Different"; else echo "Same"; fi;
  Same
