###Lab09: Filtering, subsetting, summarizing, and plotting

##Part 1: Getting set up to work with the data
#install.packages("tidyverse")

#Download the data
#Note: WD must be in EBIO4420/Labs/Lab10
woodData <- read.csv("~/EBIO4420/CompBioLabsAndHomework/Labs/Lab10/Copy of GlobalWoodDensityDatabase.csv", stringsAsFactors = F)

#3rd column name is too long, so we will rename it "woodDensity"
colnames(woodData)[4] <- "woodDensity"
head(woodData) #Check to see if it worked; it did.

##Part 2: Working with density data

#Step 4:removing rows with missing data
#step 4a: determining which row has "NA". It is in row 12150
which(is.na(woodData$woodDensity))

#step 4b: removing the row that contains NA
library("dplyr")
#newWoodData <- woodData[-c(12150)] this was my original attempt
newWoodData <- woodData %>% slice(-c(12150)) #I used a line of code from dplyr
View(newWoodData) #make sure row 12150 was deleted.

#step 5: One kind of pseudocode-replication
#new dataframe that has each species listed only once , has Family and Binomial
#infor for each species, and has mean woodDensity for each species
