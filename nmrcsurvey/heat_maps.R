
library(zipcode)
data(zipcode)
library(ggplot2)
library(dplyr)
library(devtools)
library(choroplethrZip)
library(ggmap)

#create a new data frame from the master dfm, called dfx
#dfx only includes the sum of youth participating and zipcode

dfx<-data.frame(stdfm$SUM,stdfm$ORGZIP)

#clean dfx zip codes to be consistent with the registered zip codes
#this prevents entry error from organization's completing the survey

dfx$zip<-clean.zipcodes(dfx$stdfm.ORGZIP)
dfx<-merge(dfx,zipcode, by.x='zip',by.y='zip')


#chloropleth
dfchl<-data.frame(dfx$stdfm.SUM,dfx$zip)
names(dfchl)[1]<-paste("value1")
names(dfchl)[2]<-paste("region")

dfchl2<-dfchl %>%
    group_by(region) %>% 
    transmute(value=sum(value1))
dfchl3=dfchl2[!duplicated(dfchl2$region), ]
dfchl4<- subset(dfchl3, select = c(value,region))


choro = ZipChoropleth$new(dfchl4)
choro$title = "Number of Youth Mentored 2015/2016"
choro$ggplot_scale = scale_fill_brewer(name="Mentees", palette=3, drop=FALSE,na.value="white")
choro$set_zoom_zip(state_zoom=tolower(stf), county_zoom=NULL, msa_zoom=NULL, zip_zoom=NULL)
choro$render()




###
#web reference: http://stackoverflow.com/questions/30787877/making-a-zip-code-choropleth-in-r-using-ggplot2-and-ggmap





