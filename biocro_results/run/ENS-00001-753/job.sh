#!/bin/bash
mkdir -p /home/kristinariemer/biocro_results/out/ENS-00001-753
cd /home/kristinariemer/biocro_results/run/ENS-00001-753
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_results/run/ENS-00001-753 /home/kristinariemer/biocro_results/out/ENS-00001-753
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_results/run/ENS-00001-753/README.txt /home/kristinariemer/biocro_results/out/ENS-00001-753/README.txt
