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
noNAGearFishLength <- drop_na(gearFishLength)

#check to see if worked
which(is.na(noNAGearFishLength)) #it worked!

#filter into unique gear entries
#find average length for each gear option
meanLengthByGear <- summarize(
  group_by(noNAGearFishLength,
      GEAR),
  meanLength = mean(TL_MM))

str(meanLengthByGear)
#so far, I have found the avg. length of each fish species using each type of gear method



barplotInput <- table(meanLengthByGear$GEAR, meanLengthByGear$meanLength)
barplot(barplotInput)
View(barplotInput)
