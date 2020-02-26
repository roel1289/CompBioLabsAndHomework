###Part 1: practice with simple conditionals

#step 1: if-else statement that checks if the value is larger than 5
x <- 3      #i have assigned "x" a random value
if(x > 5){
  print("x is greater than 5")       #will say this if x>5
}else {
  print("x is less than 5")          #will say this if x<5
}

  
##step 2: Importing ExampleData.csv. wd must be in lab05
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
FiftyToOneHundred <- myVector[which(myVector > 50 & myVector < 100)]
str(FiftyToOneHundred) 
#index logic statements to get values NOT just positions

#Step 2f: saving "FiftyToOneHundred" as a .csv
write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

##Step 3: Here I will be importing CO2 data. Make sure wd is in lab04 
CO2Data <- read.csv("CO2_data_cut_paste.csv") 
str(CO2Data) #looking at the structure of the data
View(CO2Data)

#Step 3a: Determining the first year which data on "Gas" were non-zero
NonZeroGasvalues <- which(CO2Data$Gas != 0)  #finding and storing where the gas values begin at 1
CO2Data$Year[NonZeroGasvalues[1]]            # indexing in "Year" column which year is where "Gas" is 1

#Step 3b: the years where "Total" emission was between 200 and 300 million tons of carbon
TotalEmissionPositions <- which(CO2Data$Total > 200 & CO2Data$Total < 300) #getting and storing positions where total emission is between 200 and 300 
CO2Data$Year[TotalEmissionPositions] #indexing which years have total emission values between 200 and 300
#The years span from the 129th year to the 137th year (1879 to 1887)



###Part 2: Loops + Conditionals + Biology

#FIRST I will set up the parameter values:
totalGenerations <- 1000 #Inintial prey abundance at time t = 1 
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators

#SECOND I will create a time vector, and two additional vectors to store the results
#PRE-ALLOCATING: One vector for values of "n" over time, and the other vector to store "p"
timeSteps <- 1:totalGenerations              #time vector from 1 to totalGenerations
n <- rep(initPrey, totalGenerations)       #setting NA's as place holders for totalGenerations length
p <- rep(initPred, totalGenerations)

#Equations: 
#n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
#p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m *p[t-1])

#THIRD I will create a loop that implements these calculations
for(t in 2:totalGenerations){
  n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
  p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m *p[t-1])
  
}

#FOURTH I will add an "if" statement to turn any neg. values into a zero
for(t in 2:totalGenerations){
  n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
  p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m *p[t-1])
  
  if(n[t] < 0) {
    n[t] = 0
  }
  if(p[t] < 0) {
    p[t] = 0
  }
} 

#FIFTH I will plot abundances of prey over time
plot(timeSteps, n, main = "Predator and Prey Abundances Over Time")
time(timeSteps, p)

#SIXTH I will make a results matrix called "myResults" 
myResults <- cbind(timeSteps, n, p)
colnames(myResults) <- c("TimeStep", "PreyAbundance", "PredatorAbundance") #Here I am renaming the column names

#Below I am putting this matrix into a csv
write.csv(x = myResults, file = "PredPreyResults.csv")




###Part 3: A Parameter Study
#Here I will create multiple sets of results from the pred-prey model above. 

initPreyVec <- seq(from = 10, to = 100, by = 10) #the initial Prey vector
LengInitPreyVec <- length(initPreyVec) #length of the initial Prey Vector

#pre-allocating the data
bonusRowNames <- 3
bonusRowNum <- 333
BonusMatrixResults <- matrix(nrow = bonusRowNum, ncol = bonusRowNames)

bonusAnswer <- for (i in 1:LengInitPreyVec) {
  for(t in 2:totalGenerations){
    n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
    p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m *p[t-1])
    
    if(n[t] < 0) {
      n[t] = 0
    }
    if(p[t] < 0) {
      p[t] = 0
    }
  } 

}


#i)Setting up way to run the code 10 times
#rep(initPreyVec, 10)
#ii)Create data structures that store all the data
#iii)Making sure data structures enable unambiguous cross-referencing