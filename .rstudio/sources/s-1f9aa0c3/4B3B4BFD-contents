library(ggplot2)
load("clm_params_data_out/pft/Setaria WT priors data/prior.distns.Rdata")


ex_single_param <- prior.distns[1,]

plot_parameter_dist <- function(param_data, num_values = 1000000){
  expression <- paste0("r", param_data$distn, "(", num_values, ",", param_data$parama, ",", param_data$paramb, ")")
  single_param_values <- data.frame(values = eval(parse(text = expression)))
  single_param_plot <- ggplot(single_param_values, aes(x = values)) +
    geom_density() +
    ggtitle(row.names(param_data))
  print(single_param_plot)
}
plot_parameter_dist(ex_single_param)
