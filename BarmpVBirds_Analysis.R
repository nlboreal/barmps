#Load the traffic count data (four 10-minute samples of cars passing Arts&Admin)
#Data taken Feb. 2, 2023 on the 2nd picket line shift (10:30 am -1 pm)

#Load the libraries needed
library(dplyr)
library(ggplot2)

#Read in the data

barmps <- read.csv("BarmpData_MUNFA.csv")

#Calculate totals Barmps to Birds

TotalBarmps <- sum(barmps$barmps) 
TotalBirds <- sum(barmps$birds)

Ratio <- TotalBarmps/TotalBirds

counts<- cbind(TotalBarmps, TotalBirds)
barplot(counts, ylab = "counts", ylim = c(0,2000))

barplot(counts, ylab = "counts", ylim = c(1,2000), log = "y")

AAexitPercentBarmps <- 80
AAentrancePecentageBarmps <- 61

Percentages <- cbind(AAentrancePecentageBarmps, AAexitPercentBarmps)
barplot(Percentages, ylab = "percent", ylim = c(0,100))

shifts <- cbind(barmps$LocationShift)
barplot(barmps$barmpsPerMinute, names = shifts, xlab = "shift", ylab = "barmps per minute")
