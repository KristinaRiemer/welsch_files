#!/bin/bash
mkdir -p /home/kristinariemer/biocro_darpa_me034_results/out/SA-SetariaWT_ME034-SLA-0.023
cd /home/kristinariemer/biocro_darpa_me034_results/run/SA-SetariaWT_ME034-SLA-0.023
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_darpa_me034_results/run/SA-SetariaWT_ME034-SLA-0.023 /home/kristinariemer/biocro_darpa_me034_results/out/SA-SetariaWT_ME034-SLA-0.023
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_darpa_me034_results/run/SA-SetariaWT_ME034-SLA-0.023/README.txt /home/kristinariemer/biocro_darpa_me034_results/out/SA-SetariaWT_ME034-SLA-0.023/README.txt
