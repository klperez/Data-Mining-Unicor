
#########################################################
## Primer punto

if(!file.exists("./data")){dir.create("./data")}
 fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
  download.file(fileUrl,destfile="./data/USC.csv")
   UscData <- read.csv("./data/USC.csv")

Property<-sum(UscData$VAL==24, na.rm = T) 
Property

#########################################################
## Segundo punto

library(XML)
fileUrl<-"http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc<-xmlTreeParse(fileUrl,useInternal=TRUE)
rootNode<-xmlRoot(doc)
xmlName(rootNode)

zipcode<-xpathSApply(rootNode,"//zipcode",xmlValue)

sum(zipcode=="21231")


##############################
#Tercer Punto
Url<-"http://biostat.jhsph.edu/~jleek/contact.html"
doc<-readLines(con = Url, n = 100)

class(doc)

nchar(doc[c(10,20,30,100)])


##########################
# Cuarto Punto
fUrl<-url("http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for")
Doc<-read.fwf(file=fUrl, skip=4, widths=c(12, 7,4, 9,4, 9,4, 9,4))
head(Doc)
