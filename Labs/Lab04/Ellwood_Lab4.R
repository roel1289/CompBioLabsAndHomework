###Part 1: Practice writing "for loops"

#Step 1: I will be writing a "for loop" to the console 10 times
for( i in seq(1,10)){
  print("hi")
}

#Step 2: I will be writing a "for loop" representing the money Tim will have in 8 weeks.
#given: he starts with $10, he gets $5 a week, and each week he spends 2x$1.34 on gum

initialmoney <- 10 #"y" is the initial $10

allowance <- 5 #allowance per week

gummoney <- 2.68 #below will represent the money per week not including the initail $10

finalmoney <- initialmoney #the final value after each week

for( i in seq(1,8)){
  final <- final + i 
  print(finalmoney + allowance - gummoney)
}

#Step 3: expected population size after 7 years
annualdecr <- .05 #pop. will decr. 5% per year
initialpop <- 2000
finalpop <- initialpop

for(i in seq(1,7)){
  finalpop <- (finalpop - (annualdecr * ( finalpop)))
  print(finalpop)
}

#Step 4: discrete-time logistic growth equation to measure pop. abundance over time
InitPopulation <- 2500
CarryCap <- 10000 #envio carrying capacity
IntGrowthRate <- 0.8
FinalPopulation <- InitPopulation  #final population size after each time through the loop

for(i in seq(1,12)){
  FinalPopulation <- (FinalPopulation + (IntGrowthRate * FinalPopulation * ((CarryCap - FinalPopulation) / CarryCap)))
  print(FinalPopulation)                                   
}

### Part 2: "for loops" and storing data produced by loops in arrays
#step 5: array indexing
#step 5a: rep (replicate) command to make vector command of 18 zeros
repdata <- rep(0, 18) #replicate 0 for 18 times
repdata

#step 5b: "for loop" that shows multiples of 3 in vector
for(i in seq(1,18)){
  repdata[i] <- 3*i
  print(repdata[i])
}

#step 5c: indexing column 1 in a row of zeros and changing it to a 1
repdata <- rep(0,18)
repdata[1] <- 1
repdata

#step 5d: "for loop" where every position is equal to one plus the previous value
repdata[2] <- 3
Final5d <- repdata[2]
for(i in seq(1,16)){
  Final5d <- (1 + (Final5d * 2))
  print(Final5d)
  
}

#step 6: Fibonnaci Sequence problem
#Below I will be writing a for loop that makes a vector of the first 20 fibonacci numbers, starting at 0
repdata <- rep(0,20)
length6 <- 20
Final6[2] <- 1
Final6[3] <- 1
Final6 <- numeric(length6)
for(i in seq(3,length6)){
  Final6[i] <- (Final6[i-1] + Final6[i-2])
  print(Final6)
}

#step 7: Redoing step 4, but now storing all the data.
#below I am storing step 4's for loop output as "forloop4"
InitPopulation <- 2500
CarryCap <- 10000 #envio carrying capacity
IntGrowthRate <- 0.8
FinalPopulation <- InitPopulation  #final population size after each time through the loop

forloopabundance <- for(i in seq(1,12)){
  FinalPopulation <- (FinalPopulation + (IntGrowthRate * FinalPopulation * ((CarryCap - FinalPopulation) / CarryCap)))
  print(FinalPopulation)                                   
}

forlooptime <- for(i in seq(1,12)){
  repdata[i] <- (i + 1)
  print(repdata[i])
}

plot(forlooptime, forloopabundance) #plotting the results
