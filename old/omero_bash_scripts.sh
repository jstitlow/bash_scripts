#!/bin/bash

# I/O
# Import image
    /opt/OMERO.server-5.3.5-ice35-b73/bin/omero import ~/src/denoising_scripts/Ch1.tif


# Create loop to select each .tiff file in a directory
for file in ~/data/20150824_Stim_scrib_nesp_Dlg_FISH/; do
# for file in ~/data/20150824_Stim_scrib_nesp_Dlg_FISH/*.tiff; do

# OMERO CLI command for importing files to a named dataset
	# Creates new dataset if one doesn't already exist
    /opt/OMERO.server-5.3.5-ice35-b73/bin/omero import $file -T Dataset:+name:20150824_Stim_scrib_nesp_Dlg_FISH\

done
