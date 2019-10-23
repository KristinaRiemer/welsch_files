#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_me034_results/out/ENS-00087-9000000004
cd /home/kristinariemer/biocro_darpa_me034_results/run/ENS-00087-9000000004
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_me034_results/run/ENS-00087-9000000004 /home/kristinariemer/biocro_darpa_me034_results/out/ENS-00087-9000000004
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_me034_results/run/ENS-00087-9000000004/README.txt /home/kristinariemer/biocro_darpa_me034_results/out/ENS-00087-9000000004/README.txt
