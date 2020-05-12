#!/bin/bash

# shell script to batch convert microscopy files with bfconvert
# Created 26 August, 2018
#
# path/to/bfconvert is hard-coaded, so point it to bfconvert installation
#
# type bfconvert into command line to see arguments
# %n.tiff creates a separate file for each image series
# .oir files over 1GB are saved as multiple infiles,
# bfconvert combines them to a single .tiff
# command needs to be in quotes and have full path (not ~)

for i in $1; do
	echo converting ${i}
	bfconvert ${i} %n.ome.tiff
done
