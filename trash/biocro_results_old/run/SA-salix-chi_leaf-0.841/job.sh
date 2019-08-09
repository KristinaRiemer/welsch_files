#!/bin/bash
mkdir -p /home/kristinariemer/biocro_results/out/SA-salix-chi_leaf-0.841
cd /home/kristinariemer/biocro_results/run/SA-salix-chi_leaf-0.841
/home/kristinariemer/pecan/models/biocro/inst/biocro.Rscript /home/kristinariemer/biocro_results/run/SA-salix-chi_leaf-0.841 /home/kristinariemer/biocro_results/out/SA-salix-chi_leaf-0.841
if [ $? -ne 0 ]; then
    echo ERROR IN MODEL RUN >&2
    exit 1
fi
cp  /home/kristinariemer/biocro_results/run/SA-salix-chi_leaf-0.841/README.txt /home/kristinariemer/biocro_results/out/SA-salix-chi_leaf-0.841/README.txt
