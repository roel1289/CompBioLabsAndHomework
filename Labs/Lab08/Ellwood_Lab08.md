# Lab 8
#### Ross Ellwood
#### EBIO 4420

## Discrete-time Logistic Growth Model
Here we have the discrete-time Logistic growth model. For this weeks lab ([EBIO 4420 Lab08](https://github.com/flaxmans/CompBio_on_git/blob/master/Labs/Lab08/Lab08_documentation_and_metadata.md))
we will be turning this model into the form of a function. This function takes a population
and illustrates how the population will grow over time. For this function to work,
there are a few necessary values one must know:
* the initial population size
* the carrying capacity
* the intrinsic growth rate

Here is an example of the function I have created. In this example,
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
```
The final part of the code creates a graph to more illustrate the model.

Here is an image of what this plot looks like: 
![Discrete-time logistic function](C:\Users\Ross\Documents\EBIO4420\CompBioLabsAndHomework\Labs\Lab08\EBIO4420Image)


