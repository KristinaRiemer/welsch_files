#!/bin/bash
mkdir -p /home/kristinariemer/biocro_results/out/SA-median
cd /home/kristinariemer/biocro_results/run/SA-median
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_results/run/SA-median /home/kristinariemer/biocro_results/out/SA-median
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_results/run/SA-median/README.txt /home/kristinariemer/biocro_results/out/SA-median/README.txt