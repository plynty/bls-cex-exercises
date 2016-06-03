rm(list=ls())

###Part One
#loading in the data
mtbi141x <- read.csv("~/Desktop/BLSdocs/data/intrvw14/interview14/mtbi141x.csv")

#UCC codes to check for
UCCcodes <- c(790240,190904)

#reported (23004x13) a dataframe that includes all rows associated with FDHOME reports
reported <- mtbi141x[which(mtbi141x$UCC %in% UCCcodes),]

#List of all unique NEWIDs
unique(reported$NEWID)
length(unique(reported$NEWID))

totalEachCUSpent<-vector()

#slow grouping and summing
###learn dplyr
for(x in 1:length(unique(reported$NEWID))){
  totalEachCUSpent[x]<-sum(reported[which(reported$NEWID == unique(reported$NEWID)[x]),"COST"])
}

#dplyr code
#mtbi141x <- group_by(mtbi141x, newid) %>% summarize(cost = sum(cost))


meanCostForEachCU <- mean(totalEachCUSpent)
