###Problem 1: Writing a function that calculates the area of a triangle ((0.5 * base) * Height)
myTriangleAreaFunc <- function(base,height){  #the function variables are base and height
  myTriAreaEq <- (0.5 * base * height)          #MyTriArea is the equation to calculate triangle area
  return(myTriAreaEq)
}
myTriangleAreaFunc(10, 9)

###Problem 2: Writing a function that computes absolute value
#Step 2a: absolute value function
myAbs <- function(x){     #I wrote an if statement that if x is less than 0, multiply it by -1
  if(x < 0){
    print(x * -1)
  }
    
}
myAbs(5)
myAbs(-2.3)

#Step 2b: Make so this function works on vectors
myProb2Vec <- c(1.1, 2, 0, -4.3, 9, -12)
myAbs(myProb2Vec)
