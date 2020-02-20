###Part 1: practice with simple conditionals

#step 1: if-else statement that checks if the value is larger than 5
x <- 3      #i have assigned "x" a random value
if(x > 5){
  print("x is greater than 5")       #will say this if x>5
}else {
  print("x is less than 5")          #will say this if x<5
}

  
##step 2: Importing ExampleData.csv
ExampleDataFrame <- read.csv("ExampleData.csv") #automatically makes it a dataframe
myVector <- ExampleDataFrame$x   #changing the dataframe into one vector

#step 2a:for loop that changes every negative to NA
for(i in 1:length(myVector)){
  if(myVector[i] < 0){
    myVector[i] <- NA
  }
}
myVector

#Step 2b: Vectorized code that using "logical" indexing
myVector[is.na(myVector)] <- NaN

#Step 2c: "which()" statement to index all the Nan's to "0"
myVector[which(is.na(myVector))] <- 0      #index myVector for values which are NaN and call them 0
myVector

#Step 2d: Amount of values between 50 and 100. This is in vectorized notation-- does step all at once. 
sum(myVector <= 100 & myVector >= 50)

#Step 2e: Making new datavector named "FiftyToOneHundred"  
FiftyToOneHundred <- which(myVector > 50 & myVector < 100)
str(FiftyToOneHundred)

#Step 2f: saving "FiftyToOneHundred" as a .csv
write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

##Step 3: Here I will be importing CO2 data 
CO2Data <- read.csv("CO2_data_cut_paste.csv")
str(CO2Data) #looking at the structure of the data
View(CO2Data)

#Step 3a: Determining the first year which data on "Gas" were non-zero
which(CO2Data$Gas != 0)
#based of the "which()" function, it appears the 135th year had the first non-zero value
#Looking at the data, the 135th year is 1885

#Step 3b: the years where "Total" emission was between 200 and 300 million tons of carbon
which(CO2Data$Total > 200 & CO2Data$Total < 300)
#The years span from the 129th year to the 137th year (1879 to 1887)

###Part 4: Loops + Conditionals + Biology
