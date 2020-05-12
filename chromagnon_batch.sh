#!/bin/bash

# shell script to batch align with chromagnon
# Revised 22 July, 2019
#
# ---REQUIREMENTS---
#
# -conda activate chromagnon
#
# --USAGE---
#
# -call from command line with this command:
# > bash ~/src/bash_scripts/chromagnon_batch.sh path/to/image/directory/ 
#  -note the trailing forward slash
#  -directory structure is: 
#    path/image/images.tif
#    path/cal/images.tif
#    filenames are identical

targ_dir="/Volumes/bioc1301/data/Olympus_FV3000/20190729_eIF4eGFP_Kstim_smFISH/aligned/"
ref_dir="/Volumes/bioc1301/data/20190724_CaMKIIYFP_ATTO647_MB112c_myrSNAP_SNAP547_viol/cal/"
#indir="$@*"
#echo indir is $indir
for i in "$targ_dir"*; do
 echo processing $i
 #ref="$ref_dir""${i##*/}"
 ref="/Volumes/bioc1301/data/Olympus_FV3000/20190729_eIF4eGFP_Kstim_smFISH/20190729_4col_cal_n_averaged.dv.chromagnon.csv"
 #echo ref is $ref
 chromagnon $i -R $ref -E dv
done


#for i in $1; do
#  chromagnon ${i} -R $2
#    echo "${i##*/}"
#   echo "$i"
#done

#indir=$@

#for d in "$indir/*"; do
# echo target is $d
 #ref="${indir::-5}""cal/""${d##*/}"
 #echo ref is $ref
 #echo "${indir::-5}"
 #echo processing "${d##*/}" 
 #chromagnon $d -R $ref -E dv
#done
