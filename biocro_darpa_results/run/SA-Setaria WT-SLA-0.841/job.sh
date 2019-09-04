#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_results/out/SA-Setaria WT-SLA-0.841
cd /home/kristinariemer/biocro_darpa_results/run/SA-Setaria WT-SLA-0.841
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_results/run/SA-Setaria WT-SLA-0.841 /home/kristinariemer/biocro_darpa_results/out/SA-Setaria WT-SLA-0.841
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_results/run/SA-Setaria WT-SLA-0.841/README.txt /home/kristinariemer/biocro_darpa_results/out/SA-Setaria WT-SLA-0.841/README.txt
