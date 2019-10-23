# Ensemble Plots
library(ggplot2)
library(data.table)

## Biomass Distributions
load("~/biocro_darpa_results/ensemble.output.NOENSEMBLEID.TotLivBiom.2004.2004.Rdata")
ens <- cbind(as.data.frame(t(data.frame(ensemble.output))))
colnames(ens) <- "TotLivBiom"
theme_set(theme_minimal() + 
            theme(axis.text.x = 
                    element_text(vjust = -1), 
                  axis.text.y = element_blank(),
                  axis.ticks = element_blank(), 
                  axis.line = element_blank(), 
                  axis.title.x = element_blank(), 
                  axis.title.y = element_blank(), 
                  panel.grid.minor = element_blank(), 
                  panel.border = element_blank()))
ggplot(data = ens) +
  geom_density(aes(x = TotLivBiom))

## Biomass Time Series with Quantiles
load('~/biocro_darpa_results/out/SA-median/biocro_output.RData')
timeseries <- data.table(day = rep(biocro_result$doy, each = 24), hour = 0:23)
rm(biocro_result)

load("~/biocro_darpa_results/ensemble.ts.NOENSEMBLEID.TotLivBiom.2004.2004.Rdata")
ens2 <- t(ensemble.ts[['TotLivBiom']])

ens2[is.na(ens2)] <- 0
mean <- rowMeans(ens2, na.rm = TRUE)
median <- apply(ens2, 1, function(x) median(x, na.rm = TRUE))
sd <- apply(ens2, 1, function(x) sd(x, na.rm = TRUE))
lcl <- apply(ens2, 1, function(x) quantile(x, probs = c(0.025), na.rm = TRUE))
ucl <- apply(ens2, 1, function(x) quantile(x, probs = c(0.975), na.rm = TRUE))

data_table <- data.table(timeseries, cbind(mean = mean, median = median, 
                                    sd = sd, lcl = lcl, ucl = ucl))
data_table_day <- data_table[, list(mean = sum(mean),  median = sum(median), sd = sqrt(sum(sd^2)),
                        lcl = sum(lcl), ucl = sum(ucl)), by = day]

daily_bio <- data.frame(data_table_day)
sd_scale <- 5
ggplot(data = daily_bio) + 
  geom_line(aes(day, y = mean)) +
  geom_ribbon(aes(day, ymin = mean - sd_scale * sd, ymax = mean + sd_scale * sd), alpha = 0.1) +
  geom_ribbon(aes(day, ymin = lcl, ymax = ucl), alpha = 0.1) +
  xlab("Day of Year") + 
  ylab("Total Biomass Mg/ha") +
  theme_classic()
