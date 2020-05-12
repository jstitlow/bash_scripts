#!/bin/bash

# Creates a new OMERO dataset and imports all files within a specified directory.
# The OMERO environment is already setup on mprocessor1.
#
#    --USAGE--
#     bash ~/src/bash_scripts/OMERO_batch_import.sh "~/path/to/image/directory/*.tiff" dataset_name
#
# Should prompt login to give OMERO credentials.
# Make sure python installation is usr/bin not conda (which python)
# If conda then change in ~/.bashrc
# Also use screen -S omero to avoid logout issues
# --group AdultBrain smFISH
# iigroup davisgroup
# added --skip upgrade flag to work around ssl issue
# Create loop to select each .tiff file in a directory

for i in $1; do

# OMERO CLI command for importing files to a named dataset
        # Creates new dataset if one doesn't already exist

        /usr/people/bioc1301/src/OMERO.server-5.5.1-ice36-b122/bin/omero import ${i} -T Dataset:+name:$2\
        --group 'AdultBrain smFISH' 
done

# AdultBrain smFISH
# davisgroup
# deepsim
# mRNA localisation screen
# --skip upgrade
