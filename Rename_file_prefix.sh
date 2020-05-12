#!/bin/bash

# Remove first n letters from file names of a given type

for f in *.tif; do mv "$f" "${f:21}"; done