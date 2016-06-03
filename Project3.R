rm(list=ls())

#loading in the data
expd141 <- read.csv("~/Downloads/trainings/R/expd141.csv")

#UCCs
oranges <- 110310
otherCitrus <- 110510
apples <- 110110
UCCs <- c(oranges,otherCitrus,apples)

#number of CUs that purchased Citrus
numberOfCUsPurachasedOne <- length(unique(expd141[expd141$UCC %in% UCCs,"NEWID"]))
#number that purchased apples
orangesPurchased <- length(unique(expd141[which(expd141$UCC == oranges),"NEWID"]))
otherCitrusPurchased <- length(unique(expd141[which(expd141$UCC == otherCitrus),"NEWID"]))
applesPurachsed <- length(unique(expd141[which(expd141$UCC == apples),"NEWID"]))

totalFruitPurchases <- orangesPurchased + otherCitrusPurchased + applesPurachsed
