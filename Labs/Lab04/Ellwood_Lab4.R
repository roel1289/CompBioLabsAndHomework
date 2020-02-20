###Part 1: Practice writing "for loops"

#Step 1: I will be writing a "for loop" to the console 10 times
for( i in seq(1,10)){
  print("hi")
}

#Step 2: I will be writing a "for loop" representing the money Tim will have in 8 weeks.
#given: he starts with $10, he gets $5 a week, and each week he spends 2x$1.34 on gum

TimStartMon <- 10  #start money
WeeklyAllowance <- 5  #Allowance per week
GumMoney <- 2.68   #Subtract this amount from each week
FinalMoney <- TimStartMon #final amount after each loop/week
for(i in (1:8)){
  FinalMoney <- FinalMoney + WeeklyAllowance - GumMoney
  print(FinalMoney)
}

# SMF COMMENTS: Line 20 gives an error message because "final" is not a defined variable.
# SMF COMMENTS: Instead, you needed it to be "finalmoney".  Additionally, i should NOT be 
# SMF COMMENTS: added to the tally.  Instead, the result of line 21's calculation should be
# SMF COMMENTS: used to update the tally.

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
for(i in (2:18)){
  repdata[i] <- (1 + (2 * repdata[i-1])) 
  print(repdata)
}

# SMF COMMENTS: The goal of 5d was to store the data in the vector you made prior
# SMF COMMENTS: to the loop.  Instead of what you had, right after line 64 you could 
# SMF COMMENTS: have started your loop.  Here's a hint that is NOT complete:
# SMF COMMENTS:     for ( i in 2:18 ) {
# SMF COMMENTS:       repdata[i] <- # WHAT GOES HERE?
# SMF COMMENTS:     }
# SMF COMMENTS:     print(repdata)
# SMF COMMENTS: That could have replaced lines 65-74


#step 6: Fibonnaci Sequence problem
#Below I will be writing a for loop that makes a vector of the first 20 fibonacci numbers, starting at 0
repdata <- rep(0, 20)
repdata[2] <- 1
for(i in (3:length(repdata))){
  repdata[i] <- repdata[i-2] + repdata[i-1]
}
print(repdata)

# SMF COMMENTS: Lines 90 and beyond don't work because the object Final6 is not defined.
# SMF COMMENTS: perhaps in line 88 you meant to create Final6 rather than "repdata"?
# SMF COMMENTS: Also, line 92 then overwrites the object; line 92 should be deleted.
# SMF COMMENTS: Line 91 is unnecessary and should be deleted; your for loop takes care of
# SMF COMMENTS: position 3 already.

# SMF COMMENTS: The print statement should be after (outside) the for loop, since it prints
# SMF COMMENTS: the entire vector.

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

TimeProblem7 <- 1:12

plot(TimeProblem7, forloopabundance) #plotting the results

# SMF COMMENTS: There are several problems with lines 112-122.  First and foremost, perhaps,
# SMF COMMENTS: keep in mind that the "for" command does not actually return anything.  
# SMF COMMENTS: Thus, your objects named "forloopabundance" and "forlooptime" are empty.
# SMF COMMENTS: The calculation used to figure out "FinalPopulation" in line 113 is what
# SMF COMMENTS: needs to be stored in a vector of data on abundances.  For time, you could 
# SMF COMMENTS: simply have time <- 1:12
