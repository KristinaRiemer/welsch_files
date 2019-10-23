#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_a10_results/out/SA-SetariaWT_A10-Vcmax-0.001
cd /home/kristinariemer/biocro_darpa_a10_results/run/SA-SetariaWT_A10-Vcmax-0.001
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_a10_results/run/SA-SetariaWT_A10-Vcmax-0.001 /home/kristinariemer/biocro_darpa_a10_results/out/SA-SetariaWT_A10-Vcmax-0.001
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_a10_results/run/SA-SetariaWT_A10-Vcmax-0.001/README.txt /home/kristinariemer/biocro_darpa_a10_results/out/SA-SetariaWT_A10-Vcmax-0.001/README.txt
