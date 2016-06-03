#loading in the data
rm(list=ls())
fmli141x <- read.csv("~/Desktop/BLSdocs/data/intrvw14/interview14/fmli141x.csv")

fmli141x$FDHOME <- fmli141x$FDHOMEPQ + fmli141x$FDHOMECQ

totalSum <- sum(fmli141x$FDHOME)

#getting number of CUs all and reported
numberCUs <- nrow(fmli141x)
reportedCUs <- length(which(fmli141x$FDHOME!=0))

#calculating the means
meanFDHOME <- totalSum/numberCUs
reportedMeanFDHOME <- totalSum/reportedCUs

#means
meanFDHOME
reportedMeanFDHOME

###Part Two
#subseting to Family of size 3
famOfThree <- fmli141x[which(fmli141x$FAM_SIZE==3),]

#getting the number of CUs all and reported
famNumberCUs <- nrow(famOfThree)
famReportedCUs <- length(which(famOfThree$FDHOME!=0))

#getting the total sum of FDHOME
famTotalSum <- sum(famOfThree$FDHOME)

#calculating the means
famMeanFDHOME <- famTotalSum/famNumberCUs
famReportedMeanFDHOME <- famTotalSum/famReportedCUs

#means
famMeanFDHOME
famReportedMeanFDHOME
