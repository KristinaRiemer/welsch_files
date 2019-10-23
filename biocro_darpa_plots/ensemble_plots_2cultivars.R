load("ensemble.ts.NOENSEMBLEID.TotLivBiom.2004.2004.Rdata")
biomass_df <- data.frame(ensemble.ts$TotLivBiom)

library(matrixStats)
quantiles <- rowQuantiles(t(ensemble.ts$TotLivBiom), probs = c(0.25, 0.5, 0.75))
quantiles_df <- data.frame(quantiles)

plot(quantiles_df$X50., type = "l", lwd = 3, xlab = "Days", ylab = "Total Biomass (kg C m-2)", ylim = c(0, 1.6))
lines(quantiles_df$X25., col = "red", lty = 2)
lines(quantiles_df$X75., col = "red", lty = 2)
axis(1, at = seq(from = 24, to = 8760, by = 720), labels = seq(from = 24, to = 8760, by = 720) / 24)


first_hour <- as.POSIXct("2004-01-01 01:00:00")
datetime <- first_hour
for(hour in 1:8759){
  following_hour <- first_hour + hour*60*60
  datetime <- c(datetime, following_hour)
}
quantiles_df$datetime <- datetime

library(tidyr)
quantiles_df_long <- gather(quantiles_df, quantile, value, X25.:X75.)

library(ggplot2)
library(scales)
ggplot(quantiles_df_long, aes(x = datetime, y = value, color = quantile)) +
  geom_line() +
  scale_color_manual(labels = c("25%", "50%", "75%"), 
                     values = c("grey", "black", "grey")) +
  labs(x = "Date", y = "Total Biomass (kg C m-2)") +
  theme_bw() +
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_blank(), 
        legend.title = element_blank()) +
  scale_x_datetime(labels = date_format("%b"))

biomass_df_t <- data.frame(t(biomass_df))
biomass_df_t$datetime <- datetime

# library(TSstudio)
# ts_quantile(biomass_df_t, upper = 0.75, lower = 0.25)
# 
# 
# library(UKgrid)
# nd <- extract_grid(type = "tbl", columns = "ND",start = 2011, end = 2017) 
# ts_quantile(nd)
