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
FiftyToOneHundred <- 
