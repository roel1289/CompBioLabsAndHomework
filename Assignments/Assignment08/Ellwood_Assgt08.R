###Assignment 8

#importing the data
FishLengthDiet <- read.csv("~/EBIO4420/CompBioLabsAndHomework/Assignments/Assignment08/FishLengthDiet.csv", stringsAsFactors = F)

#Question: Does using different gear to catch the fish create a bias for the certain length of fish caught?

#looking into only columns "Gear", "SPECIES" and "TL_MM"
gearFishLength <- FishLengthDiet[ ,c(2,4)] #now we can focus on the gear used and the fish length
str(gearFishLength)

#check for any missing data entries(will be shown as "NA") and delete those rows 
#noNAGearFishLength1 <- gearFishLength[-which(is.na(gearFishLength$TL_MM))] 

#install following packages to delete "NA" rows
install.packages("tidyverse") #need tidyverse for following command
library(dplyr)
library(tidyr)
noNAGearFishLength <- drop_na(gearFishLength) #uses tidyr

#check to see if worked
which(is.na(noNAGearFishLength)) #it worked!

barplot(height = noNAGearFishLength$TL_MM, names = noNAGearFishLength$GEAR)

bPlot <- table(noNAGearFishLength$TL_MM, noNAGearFishLength$GEAR)
barplot(bPlot)

################

#filter into unique gear entries
#find average length for each gear option
meanLengthByGear <- summarize(
  group_by(noNAGearFishLength,
      GEAR),
  meanLength = mean(TL_MM))

newMeanLengthByGear <- meanLengthByGear[-c(1),]

str(newMeanLengthByGear)
#so far, I have found the avg. length of each fish species using each type of gear method


barplotinput <- table(newMeanLengthByGear$meanLength, newMeanLengthByGear$GEAR)
barplot(barplotinput)
View(barplotInput)
