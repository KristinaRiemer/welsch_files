#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_results/out/SA-SetariaWT-growth_respiration_coefficient-0.999
cd /home/kristinariemer/biocro_darpa_results/run/SA-SetariaWT-growth_respiration_coefficient-0.999
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_results/run/SA-SetariaWT-growth_respiration_coefficient-0.999 /home/kristinariemer/biocro_darpa_results/out/SA-SetariaWT-growth_respiration_coefficient-0.999
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_results/run/SA-SetariaWT-growth_respiration_coefficient-0.999/README.txt /home/kristinariemer/biocro_darpa_results/out/SA-SetariaWT-growth_respiration_coefficient-0.999/README.txt
