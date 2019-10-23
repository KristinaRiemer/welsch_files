# TODO: load in and plot trait data
a10_traits <- read.csv("biocro_darpa_a10_results/pft/SetariaWT_A10/trait.data.csv")
me034_traits <- read.csv("biocro_darpa_me034_results/pft/SetariaWT_ME034/trait.data.csv")

### Parameters
library(dplyr)
library(ggplot2)
library(PEcAn.utils)
fontsize = list(title = 18, axis = 14)
theme_set(theme_minimal() + 
            theme(axis.text.x = 
                    element_text(
                      size = fontsize$axis, 
                                 vjust = -1), 
                  axis.text.y = element_blank(),
                  axis.ticks = element_blank(), 
                  axis.line = element_blank(), 
                  axis.title.x = element_blank(), 
                  axis.title.y = element_blank(), 
                  panel.grid.minor = element_blank(), 
                  panel.border = element_blank()))
samples <- list()

d <- data.frame(directory = c('biocro_darpa_a10_results', 'biocro_darpa_me034_results'),
                pft = c('SetariaWT_A10', 'SetariaWT_ME034'))
for(i in 1:2){
  dir <- d$directory[i]
  pft <- d$pft[i]
  load(file.path('/home/kristinariemer', dir,'samples.Rdata'))
  z <- lapply(trait.samples[[1]], function(x) as.numeric(x)[1:20000])
  samples[[pft]] <- cbind(pft = pft, tidyr::gather(bind_rows(z)))
}
parms <- bind_rows(samples) %>% 
  transmute(pft = pft, 
            trait = key, 
            value = value, 
            trait.labels = as.character(trait.lookup(key)$figid))
p <- parms# %>% filter(pft %in% c("hardwood-priors", "salix-miyabeana", "salix-purpurea"))

z <- ggplot(data = p) + 
  geom_density(aes(value, fill = pft), alpha = 0.25) + 
  facet_wrap(~trait.labels, ncol = 1, scales = 'free') + #trait.labels to trait
  expand_limits(x=0) +
  scale_fill_manual(values=c("#E69F00", "#56B4E9"))

z

options(digits=2, scientific = FALSE)
param_summary <- p %>% group_by(pft, trait) %>% summarize(mean = mean(value, na.rm = TRUE), sd = sd(value, na.rm = TRUE), 
                                                          lcl95 = quantile(value, 0.025, na.rm = TRUE),
                                                          ucl95 = quantile(value, 0.975, na.rm = TRUE))
param_summary %>% 
  dplyr::mutate_if(is.numeric, funs(as.character(signif(., 3)))) %>%
  knitr::kable()

## SA / VD

library(data.table)

variables <- c('TotLivBiom')# also 'StemBiom', 'TVeg') 
vd.plots <- new.vdplots <- list()
vd.output <- list()

variable <- variables[1]
vd.output[[variable]] <- list()
for(i in 1:2){ #loop over pfts
  pft <- as.character(d$pft[i])
  dir <- file.path('/home/kristinariemer', d$directory[i])
  
  
  load(file.path(dir, 
                 paste0("sensitivity.results.NOENSEMBLEID.", 
                        variable, ".2004.2004.Rdata")))
  
  .t <- sensitivity.results[[pft]]$variance.decomposition.output 
  .t2 <- data.table(trait = names(.t$coef.vars), 
                    pft = pft, 
                    as.data.table(.t))
  vd.output[[variable]][[pft]] <- .t2
}


vd.yield <- rbindlist(vd.output$TotLivBiom)
vd.yield$variable <- 'TotLivBiom'

#out <- rbind(vd.yield, vd.transpiration)[, `:=`(
out <- rbind(vd.yield)[, `:=`( ## strange syntax is from data.table
  trait.labels = as.character(trait.lookup(trait)$figid),
  units = trait.lookup(trait)$units,
  coef.vars = coef.vars * 100,
  sd = sqrt(variances))]
out$trait.labels <- factor(out$trait.labels)
out$pft <- factor(out$pft)

fontsize = list(title = 18, axis = 14)


vdplots <- list()
for(var in variables){
  a <- out[variable == var]# & pft != 'salix']
  if(var == "TVeg") {
    a$sd <- a$sd * 60 * 60 * 24 # convert /s to /d
  }
  
  cv <- ggplot(data = a) + 
    geom_pointrange(aes(x = trait.labels, y = coef.vars, 
                        ymin = 0,  ymax = coef.vars, color = pft), alpha = 0.5, 
                    position=position_dodge(width=c(-0.4)), size = 1.25) + 
    coord_flip() +
    ggtitle("CV %") + guides(color = FALSE) +  
    scale_color_manual(values=c("#E69F00", "#56B4E9")) +
    theme(axis.text.y = element_text(color = 'black', hjust = 1, size = fontsize$axis)) + 
    geom_segment( aes(x = 0, y = 0, 
                      xend = 0, yend = max(pretty(coef.vars))), size = 0.1) + geom_hline(aes(yintercept = 0), size = 0.1)
  
  
  el <- ggplot() + 
    geom_pointrange(data = a, aes(x = trait.labels, y = elasticities, 
                                  ymin = 0,  ymax = elasticities, color = pft), alpha = 0.5,
                    position=position_dodge(width=c(-0.4)), size = 1.25) + 
    coord_flip() +   
    ggtitle("Elasticity") + guides(color = FALSE) +
    scale_color_manual(values=c("#E69F00", "#56B4E9")) +
    theme(plot.title = element_text(hjust = 0.5)) + 
    geom_segment( aes(x = 0, y = min(pretty(a$elasticities)), 
                      xend = 0, yend = max(pretty(a$elasticities))), size = 0.2) + geom_hline(aes(yintercept = 0), size = 0.1)
  
  
  vd <- ggplot(data = a) + 
    geom_pointrange(aes(x = trait.labels, y = sd, 
                        ymin = 0,  ymax = sd, color = pft), alpha = 0.5,
                    position=position_dodge(width=c(-0.4)), size = 1.25) + 
    coord_flip() +  
    ggtitle("Variance Explained (SD Units)")  +
    scale_color_manual(values=c("#E69F00", "#56B4E9")) +
    geom_segment(data = data.frame(ticks = pretty(c(0, max(a$sd)))), 
                 aes(x = 0, y = 0, xend = 0, yend = max(ticks)), size = 0.1) + geom_hline(aes(yintercept = 0), size = 0.1)
  
  vdplots[[var]] <- gridExtra::grid.arrange(cv, el, vd, ncol = 3)
  
  #  write.csv(a, paste0('~/out/variance_decomposition_', var, '.csv'), row.names = FALSE)
  #  ggsave(vdplots[[var]], filename = paste0('~/out/vdplots_', var, '.png'), width = 16, height = 5)
  
}


## Ensemble

load("/home/kristinariemer/biocro_darpa_a10_results/ensemble.output.NOENSEMBLEID.TotLivBiom.2004.2004.Rdata")
ens <- cbind(runtype = 'A10', as.data.frame(t(data.frame(ensemble.output))))
load("/home/kristinariemer/biocro_darpa_me034_results/ensemble.output.NOENSEMBLEID.TotLivBiom.2004.2004.Rdata")
ens <- rbind(ens, cbind(runtype = 'ME034', as.data.frame(t(data.frame(ensemble.output)))))

colnames(ens) <- c('pft', 'TVeg')
ggplot(data = ens) + geom_density(aes(x = TVeg, fill = pft), adjust = 3, alpha = 0.5) +  
  scale_fill_manual(values=c("#E69F00", "#56B4E9")) + xlim(0,1.5) 




summarize.ensemble <- function(pft, variable){
  load('/home/kristinariemer/biocro_darpa_a10_results/out/SA-median/biocro_output.RData')
  timeseries <- data.table(day = rep(biocro_result$doy, each = 24), hour = 0:23)
  rm(biocro_result)
  
  load(file.path('/home/kristinariemer/', as.character(d[d$pft == pft,]$directory),
                 paste0('ensemble.ts.NOENSEMBLEID.', variable, '.2004.2004.Rdata')))
  ens <- t(ensemble.ts[[variable]])
  ens[is.na(ens)] <- 0
  mean <- rowMeans(ens, na.rm = TRUE)
  median <- apply(ens, 1, function(x) median(x, na.rm = TRUE))
  sd <- apply(ens, 1, function(x) sd(x, na.rm = TRUE))
  lcl <- apply(ens, 1, function(x) quantile(x, probs = c(0.025), na.rm = TRUE))
  ucl <- apply(ens, 1, function(x) quantile(x, probs = c(0.975), na.rm = TRUE))
  
  .dt <- data.table(timeseries, cbind(mean = mean, median = median, 
                                      sd = sd, lcl = lcl, ucl = ucl))
  if(variable == 'TVeg'){
    .dt_day <- .dt[, list(mean = mean(mean),  median = mean(median), sd = sqrt(mean(sd^2)),
                          lcl = mean(lcl), ucl = mean(ucl)), by = day]
  } else {#if (variable == 'StemBiom'){ ### should take mean instead of sum biomass(?)
    .dt_day <- .dt[, list(mean = sum(mean),  median = sum(median), sd = sqrt(sum(sd^2)),
                          lcl = sum(lcl), ucl = sum(ucl)), by = day]
  }
  .dt_day[, `:=`(pft = pft, variable = variable)]
  return(.dt_day)
}

all <- list()

variables <- c('TotLivBiom')
pfts <- as.character(d$pft)


all <- list()
for(variable in variables){
  all[[as.character(variable)]] <- list()
  for(pft in pfts){
    all[[as.character(variable)]][[as.character(pft)]] <- summarize.ensemble(pft = pft, variable = variable)
  }
}

modeled_yield <- rbindlist(all$TotLivBiom)
sd_scale <- 5
p <- ggplot(data = modeled_yield ) + 
  #  geom_ribbon(aes(day, y = mean, ymin = mean - sd, ymax = mean + sd), fill = 'blue', alpha = .25) + 
  geom_line(aes(day, y = mean, color = pft)) +
  geom_ribbon(aes(day, ymin = mean - sd_scale * sd, ymax = mean + sd_scale * sd, fill = pft), alpha = 0.1) +
  geom_ribbon(aes(day, ymin = lcl, ymax = ucl, fill = pft), alpha = 0.1) +
  #geom_line(aes(day, y = mean + sd_scale * sd, color = pft), alpha = 0.5, size = 0.1) +
  #geom_line(aes(day, y = mean - sd_scale * sd, color = pft), alpha = 0.5, size = 0.1) +
  #geom_line(aes(day, y = lcl, color = pft), alpha = 0.5, size = 0.1) +
  #geom_line(aes(day, y = ucl, color = pft), alpha = 0.5, size = 0.1) +
  xlab("Day of Year") + 
  ylab("Total Biomass Mg/ha") +
  scale_fill_manual(values=c("#E69F00", "#56B4E9")) +
  scale_color_manual(values=c("#E69F00", "#56B4E9")) +
  theme_classic()
p

