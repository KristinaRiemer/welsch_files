load("clm_params_data_out/samples.Rdata")
ls()
write.csv(ensemble.samples$`Setaria WT priors data`, "clm_params_data/ensemble_data.csv")
write.csv(sa.samples$`Setaria WT priors data`, "clm_params_data/sensitivity_data.csv")
