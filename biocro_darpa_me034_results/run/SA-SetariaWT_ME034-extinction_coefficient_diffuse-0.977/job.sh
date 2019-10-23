#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_me034_results/out/SA-SetariaWT_ME034-extinction_coefficient_diffuse-0.977
cd /home/kristinariemer/biocro_darpa_me034_results/run/SA-SetariaWT_ME034-extinction_coefficient_diffuse-0.977
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_me034_results/run/SA-SetariaWT_ME034-extinction_coefficient_diffuse-0.977 /home/kristinariemer/biocro_darpa_me034_results/out/SA-SetariaWT_ME034-extinction_coefficient_diffuse-0.977
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_me034_results/run/SA-SetariaWT_ME034-extinction_coefficient_diffuse-0.977/README.txt /home/kristinariemer/biocro_darpa_me034_results/out/SA-SetariaWT_ME034-extinction_coefficient_diffuse-0.977/README.txt
