###Problem 1: Writing a function that calculates the area of a triangle ((0.5 * base) * Height)
myTriangleAreaFunc <- function(base,height){  #the function variables are base and height
  myTriAreaEq <- (0.5 * base * height)          #MyTriArea is the equation to calculate triangle area
  return(myTriAreaEq)
}

#testing my function of triangle with base = 10 and height = 9
myTriangleAreaFunc(10, 9)


###Problem 2: Writing a function that computes absolute value
#Step 2a: absolute value function
myAbs <- function(x){     #I wrote an if statement that if x is less than 0, multiply it by -1
  if(x < 0){              #Otherwise, print x
    return(x * -1)        #if/else only works on a scalar, (not vectors) so this eqn only works on scalars
  }else{
    return(x)
  }
    
}

#testing that my function works on 5 and -2.3
myAbs(5)
myAbs(-2.3)

#Step 2b: Make so this function works on vectors
myAbsPart2 <- function(x){
  myAbsEq <- sqrt((x)^2)    #square root a square to get original positive value
  return(myAbsEq)
}

#testing my function on the following vector (myProb2Vec)
myProb2Vec <- c(1.1, 2, 0, -4.3, 9, -12)
myAbsPart2(myProb2Vec)


###Problem 3: Fibonacci sequence function
#n is the amount of Fibonacci numbers. Assume n >= 3
#startNum is the first number
#in the following, I took lab04 fibonacci equation and wrapped a function around it as well as change out n's
myFF <- function(n, startNum){
  repdata <- rep(0, n)    #pre-allocating 0's
  repdata[2] <- 1         #indexing the second position as "1"
  for(i in (3:length(repdata))){
    repdata[i] <- repdata[i-2] + repdata[i-1]
  }
  return(repdata)
}
myFF(3)


###Problem 4: functions with x and y
#step 4a: 
mySquareDifference <- function(x,y){
  quantity <- ( x - y) ^ 2
  return(quantity)
}
#testing my function on the values 3 and 5
mySquareDifference(3,5)
#testing function on vectors
step4aVec1 <- c(2,4,6)
mySquareDifference(step4aVec1,4)

#step 4b: 

