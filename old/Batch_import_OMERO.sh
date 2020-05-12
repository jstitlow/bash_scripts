#!/bin/bash

# Creates a new OMERO dataset and imports all files within a specified directory.
# The OMERO environment is already setup on mprocessor1.
# Just specify a directory and file type (line 8)
# and name the new directory (line 13).
# Should prompt login to give OMERO credentials.
# Make sure python installation is usr/bin not conda (which python)
# If conda then change in ~/.bashrc
# Also use screen -S omero

# Create loop to select each .tiff file in a directory
for file in ~/data/20150813_OrR_SypN_Scrib_Nesprin_FISH/*SypN_MSP300_p6*; do
# for file in ~/data/20150824_Stim_scrib_nesp_Dlg_FISH/*.tiff; do

# OMERO CLI command for importing files to a named dataset
	# Creates new dataset if one doesn't already exist
	/opt/OMERO.server-5.3.5-ice35-b73/bin/omero import $file -T Dataset:+name:20150813_OrR_SypN_Scrib_Nesprin_FISH\
	--group 'davisgroup'
done
