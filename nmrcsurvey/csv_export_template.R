setwd("C:/Users/Sam/R/nmrcsurvey")
source("mergeclean.R")
statefun("IL")
columns<-c("ORGNAME","ORGZIP","STAT","NAME","EMAIL","NAMEp","DS")
stdfmprint<-stdfm[columns]
write.csv(stdfmprint,"IL_Data.csv",row.names=FALSE)
