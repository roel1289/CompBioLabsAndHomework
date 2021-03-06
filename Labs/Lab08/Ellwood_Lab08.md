# Lab 8
#### Ross Ellwood
#### EBIO 4420

## Discrete-time Logistic Growth Model
One of the best ways to measure the growth of a population is by the **discrete-time Logistic growth model**. For this weeks
 lab ([EBIO 4420 Lab08](https://github.com/flaxmans/CompBio_on_git/blob/master/Labs/Lab08/Lab08_documentation_and_metadata.md))
we will be turning the discrete-time logistic growth model into the form of a function. This function takes a population
and illustrates how the population will grow over time. For this function to work,
there are a few necessary values one must know:
* the initial population size
* the carrying capacity
* the total number of generations
* the intrinsic growth rate

Here is an _example_ of the function I have created. In this example,
the initial populations size is 2500, the carrying capacity is 10000, and the 
intrinsic growth rate is 0.8.

```
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
```
The final two commands of the code creates a plot and puts the data into a data set.

Here is an image of what this plot looks like: 
![Discrete-time logistic function](EBIO4420Image.PNG)


