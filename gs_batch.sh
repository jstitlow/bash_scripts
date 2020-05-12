#!/bin/bash

# shell script to batch convert microscopy files with bfconvert
# Modified April 1, 2020
#
# path/to/bfconvert is hard-coaded, so point it to bfconvert installation
#
# type bfconvert into command line to see arguments
# %n.tiff creates a separate file for each image series
# .oir files over 1GB are saved as multiple infiles,
# bfconvert combines them to a single .tiff
# command needs to be in quotes and have full path (not ~)
# bash ~/src/bash_scripts/gs_batch.sh "path/to/file/*.pdf"

for i in $1; do
	echo converting ${i}
	newfile=$(echo "$i" | cut -f 1 -d '.')
	#bfconvert ${i} %n.ome.tiff
	gs -dBATCH -dNOPAUSE -q -dFirstPage=1 -dLastPage=1 -sDEVICE=jpeg -r400 -sOutputFile=${newfile}.jpg ${i}
done
