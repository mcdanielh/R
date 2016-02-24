#merging the two files: agency & programs
	#first create df1 program data frame
df1<-read.csv(file=file.choose(),header=TRUE)
	#second create df2 program data frame 
df2<-read.csv(file=file.choose(),header=TRUE)
	#finally, merge the data 
test1<-merge(x=df1,y=df2[,1:236],by="Response.ID",all.x=TRUE)

#test git push from rsudio