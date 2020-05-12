###############################################################
# remove a defined string from every filename in a directory
# --USSAGE--
# 1) specify string variable
# 2) call from inside the target directory
#    > bash ~/src/bash_scripts/remove_string_from_filenames.sh
###############################################################

string="271119_smFISH_MBONs.mvd2 - "
for filename in *.r3d; do 
    [ -f "$filename" ] || continue
    mv "$filename" "${filename//$string/}"

done

