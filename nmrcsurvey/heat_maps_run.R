#Density Maps
#pull in the master merge document from raw data files
setwd("C:/Users/Sam/R/nmrcsurvey")
source("mergeclean.R")
statefun("Colorado")
source("heat_maps.R", print.eval  = TRUE)