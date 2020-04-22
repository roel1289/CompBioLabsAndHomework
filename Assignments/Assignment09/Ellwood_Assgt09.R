###Assignment 8

#in order to run my code, you must have these packages:
install.packages("tidyverse") 
require(dplyr)
require(tidyr)


#importing the data
FishLengthDiet <- read.csv("~/EBIO4420/CompBioLabsAndHomework/Assignments/Assignment08/FishLengthDiet.csv", stringsAsFactors = F)

#Question: Does using different gear to catch the fish create a bias for the certain length of fish caught?
#In order to look at this, I will look at the average fish length 
#for each method and the variability of each method.



#looking into only columns "Gear", "SPECIES" and "TL_MM"
gearFishLength <- FishLengthDiet[ ,c(2,4)] #now we can focus on the gear used and the fish length
str(gearFishLength)

#Now, I will remove any "NA"'s from the dataframe. 
#noNAGearFishLength <- drop_na(gearFishLength) #uses tidyr
noNNaDf <- gearFishLength[!apply(is.na(gearFishLength) | gearFishLength == "", 1, all),]

noNAGearFishLength <- drop_na(noNNaDf) #uses tidyr

#check to see if worked by searching for "NA"
which(is.na(noNAGearFishLength)) #it worked, no "NA's" were found!
head(noNAGearFishLength)


#barplot using "aggregate" and by making a table 
#########################
aggOutput <- aggregate(noNAGearFishLength$TL_MM, by = list(noNAGearFishLength$GEAR), FUN = sum)
aggOutput
barplot(height = aggOutput$x, names.arg = aggOutput$Group.1)
#########################

barplot(height = noNAGearFishLength$TL_MM, names = noNAGearFishLength$GEAR)

bPlotTable <- table(noNAGearFishLength$TL_MM, noNAGearFishLength$GEAR)
barplot(bPlotTable)

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
