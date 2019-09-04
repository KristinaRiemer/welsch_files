#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_results/out/ENS-00001-9000000000
cd /home/kristinariemer/biocro_darpa_results/run/ENS-00001-9000000000
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_results/run/ENS-00001-9000000000 /home/kristinariemer/biocro_darpa_results/out/ENS-00001-9000000000
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_results/run/ENS-00001-9000000000/README.txt /home/kristinariemer/biocro_darpa_results/out/ENS-00001-9000000000/README.txt
