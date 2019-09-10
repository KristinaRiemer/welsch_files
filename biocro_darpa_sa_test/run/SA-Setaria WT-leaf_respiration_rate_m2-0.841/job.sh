#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_sa_test/out/SA-Setaria WT-leaf_respiration_rate_m2-0.841
cd /home/kristinariemer/biocro_darpa_sa_test/run/SA-Setaria WT-leaf_respiration_rate_m2-0.841
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_sa_test/run/SA-Setaria WT-leaf_respiration_rate_m2-0.841 /home/kristinariemer/biocro_darpa_sa_test/out/SA-Setaria WT-leaf_respiration_rate_m2-0.841
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_sa_test/run/SA-Setaria WT-leaf_respiration_rate_m2-0.841/README.txt /home/kristinariemer/biocro_darpa_sa_test/out/SA-Setaria WT-leaf_respiration_rate_m2-0.841/README.txt
