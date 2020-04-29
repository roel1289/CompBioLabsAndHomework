###Assignment 8

#in order to run my code, you must have these packages:
install.packages("tidyverse") 
require(dplyr)
require(tidyr)
require(ggplot2) #for the plot

#importing the data
FishLengthDiet <- read.csv("~/EBIO4420/CompBioLabsAndHomework/Assignments/Assignment08/FishLengthDiet.csv", stringsAsFactors = F)

#Question: Does using different gear to catch the fish create a bias for the certain length of fish caught?
#In order to look at this, I will look at the average fish length 
#for each method and the variability of each method.



#looking into only columns "Gear" and "TL_MM"
gearFishLength <- FishLengthDiet[ ,c(2,4)] #now we can focus on the gear used and the fish length

#Now, I will remove any "NA"'s from the dataframe. 
noNAGearFishLength <- drop_na(gearFishLength) #uses tidyr

#now to find and remove empty entries:
noNAEmpDF <- noNAGearFishLength[-which(noNAGearFishLength == ""), ]


#check to see if worked by searching for "NA"
which(is.na(noNAEmpDF)) #it worked, no "NA's" were found!
head(noNAEmpDF)


#making a barplot ggplot
#########################
ggplot(noNAEmpDF, aes(x = noNAEmpDF$GEAR, y = noNAEmpDF$TL_MM), color = "red") +
  geom_boxplot(outlier.shape = 16, outlier.size = 1.5, aes(fill = GEAR), notch = TRUE) + 
  ggtitle("The Lengths of Fish for each Method") +
  xlab("Gear") +
  ylab("Fish Length (cm)") 
################



#filter into unique gear entries
#find average length for each gear option
meanLengthByGear <- summarize(
  group_by(noNAEmpDF,
           GEAR),
  meanLength = mean(TL_MM))

meanLengthByGear


### Now I will run an ANOVA test to see if my results were significant
#I will be running a one-way ANOVA test

fishAOV <- aov(TL_MM ~ GEAR, data = noNAEmpDF)
summary(fishAOV)

#After running an ANOVA, I found a p-value to be p = 2e-16 meaning there are
#significant differences between the averages of the three types of gear!