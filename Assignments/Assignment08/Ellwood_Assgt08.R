###Assignment 8

#importing the data
FishLengthDiet <- read.csv("~/EBIO4420/CompBioLabsAndHomework/Assignments/Assignment08/FishLengthDiet.csv")

#Question: Does using different gear to catch the fish create a bias for the certain length of fish caught?

#looking into only columns "Gear", "SPECIES" and "TL_MM"
gearFishLength <- FishLengthDiet[ ,2:4] #now we can focus on the gear used to find each species and the fish length
gearFishLength

#filter into unique gear entries
#find average length for each gear option


#use tidyverse package
install.packages("tidyverse")

#example using tidyverse pipes
library("ggplot2")
myAnswer <- fishDietStudyDetailed %>% tail(DIET_ITEM)
library(ggplot2)
