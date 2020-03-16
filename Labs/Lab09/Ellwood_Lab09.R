###Lab09

#Importing the data
#setwd to datasets then cusack_et_al
camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

#I want to know what this dataset generally looks like:
head(camData)

#upload lubtidate package
#install.packages("lubridate")

##Part 1: 
#practicing on small subset of data to figure out what to do
DateTimeCol <- camData$DateTime[1:5]
#checking to see if it workded
head(DateTimeCol)

#checking to see type of inputs
class(DateTimeCol) #"characters"

#make new vector containing DateTimes as a "POSIXlt" type
newDateTime <- strptime(DateTimeCol, format = "%d/%m/%Y %H:%M")
class(newDateTime)

#implementing this technique on the whole camData dataframe
newCamData <- strptime(camData$DateTime, format = "%d/%m/%Y %H:%M")
head(newCamData) #checking to see if worked
#I am not sure why it didn't change the whole dataframe

##Part 2: Locating date entries that were improperly imported
View(camData$DateTime[1:50])
#from this we can see that entries should include century in year position
