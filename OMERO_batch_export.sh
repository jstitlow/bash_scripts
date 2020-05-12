#!/bin/bash

for ID in 521659 521657 521654 521651 521647 ; do
    /opt/OMERO.server-5.3.5-ice35-b73/bin/omero export \
    --group 'AdultBrain smFISH' \
    --file image-$ID.ome.tiff Image:$ID
done
