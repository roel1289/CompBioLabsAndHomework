
#here i have my lab04 problem 7
#Below I will make this segment of code into a function
myDiscreteTimeLogFunc <- function(intGrowthRate, CarryCap, i, InitPopulation){
  InitPopulation <- 2500
  CarryCap <- 10000 #envio carrying capacity
  IntGrowthRate <- 0.8
  FinalPopulation <- InitPopulation  #final population size after each time through the loop
  time <- seq(1,12) #pre-allocating time
  
  
  for(i in 2:12){
    FinalPopulation[i] <- (FinalPopulation[i-1] + (IntGrowthRate * FinalPopulation[i-1] * ((CarryCap - FinalPopulation[i-1]) / CarryCap)))
    print(FinalPopulation)                                   
  }
  return(FinalPopulation)
}
TimeProblem7 <- 1:12

plot(TimeProblem7, FinalPopulation, main = "Population size over time", xlab = "Population Size", ylab = "Generations") #plotting the results

#calling function
theResults <- myDiscreteTimeLogFunc(.8,10000, 12, 2500) 

#putting my function into a data set
write.csv(x = theResults, file = "LogisticGrowthModel.csv")
