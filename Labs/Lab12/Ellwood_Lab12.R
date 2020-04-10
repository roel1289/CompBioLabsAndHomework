#####Lab 12: Choose your own adventure

#problem 1: barplot using ggplot()
#uploading cusack et al. data
camData <- read.csv("~/EBIO4420/compBioSandbox/CompBio_on_git/Datasets/Cusack_et_al/Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)
head(camData)

#get the data so I focus on Species and count
uniqueNames <- unique(camData$Species) #this will be on the x-axis of the graph
View(summarize(group_by(camData,Species))) #another way to find unique specie names

#Dataframe that counts number of times each species was seen
speciesCountDF <- count(camData, camData$Species) 

#using ggplot to graph
library(ggplot2)
ggplot(speciesCountDF, aes(x = camData$Species, y = n)) + geom_line()
plot(speciesCountDF)

#realize now that I need to get rid of NA's earlier on in the data that is messing me
#up now