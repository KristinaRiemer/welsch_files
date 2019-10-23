#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_results/out/SA-SetariaWT-stomatal_slope.BB-0.977
cd /home/kristinariemer/biocro_darpa_results/run/SA-SetariaWT-stomatal_slope.BB-0.977
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_results/run/SA-SetariaWT-stomatal_slope.BB-0.977 /home/kristinariemer/biocro_darpa_results/out/SA-SetariaWT-stomatal_slope.BB-0.977
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_results/run/SA-SetariaWT-stomatal_slope.BB-0.977/README.txt /home/kristinariemer/biocro_darpa_results/out/SA-SetariaWT-stomatal_slope.BB-0.977/README.txt
