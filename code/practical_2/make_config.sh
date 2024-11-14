#!/bin/bash

conditions_csv_f='../../data/derived/top_conditions.csv'

only_conditions=$(sed '1d' $conditions_csv_f)
conds=($only_conditions)

printf 'CONDITIONS:\n' >  ~/projects/conda-hpc-snakemake-example/code/config.yml
for i in ${conds[@]}; do 
  echo $i
 printf "  - ${i}\n" >> ~/projects/conda-hpc-snakemake-example/code/config.yml
done

