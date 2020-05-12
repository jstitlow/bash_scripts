#!/bin/bash


for ID in 758206;
    /opt/OMERO.py-5.4.10-ice36-b105/bin/omero export \
   --group 'davisgroup' --skip upgrade \
   --file $ID.ome.tiff Image:$ID
done

#while read -r ID; do
#    /opt/OMERO.py-5.4.8-ice36-b99/bin/omero export \
#    --group 'mRNA localisation screen' \
#    --file $ID.ome.tiff Image:$ID
#done <NMJ_imageIDs.csv

#file=${file//[!0-9/}


#davisgroup
#AdultBrain smFISH
#deepsim
#mRNA localisation screen
