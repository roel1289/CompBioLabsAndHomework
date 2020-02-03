#lab3 Part 1: Basic Operations
#lab3 step 3: "chips"= number of bags of chips began with at night. "guests"= number of guests coming to party.
chips <- 5   
guests <- 8  

#lab3 step 5: "bagperguest" = average number of bags of chips each guest will eat
bagperguest <- 0.4

#lab3 step 7: Below I have shown the expected amount of chips leftover.I created a new variable Called "eaten" = amount of chips eaten
eaten <- guests * bagperguest #amount of chips consumed
chips - eaten #amount chips leftover

#Part 2: Practice with objects and functions
#Lab3 step 8: Below I have created a vector for each friend that represents a vector of their movie rankings
Self <- c(7,9,8,1,2,3,4,6,5)
Penny <- c(5,9,8,3,1,2,4,7,6)
Lenny <- c(6,5,4,9,8,7,3,2,1)
Stewie <- c(1,9,5,6,8,7,2,3,4)

#lab3 Step 9: I am accessing Penny's ranking for episode 4 and storing it in a new variable called "PennyIV"
PennyIV <- Penny[4] 
LennyIV <- Lenny[4] #Lenny's rank of episode is now stored in a variable called "LennyIV"

#lab3 step 10: Concatenate all 4 sets of rankings into single data object
rankingvector <- cbind(Self, Penny, Lenny, Stewie)
rankingvector

#lab3 step 11: inspect structure of PennyIV, Penny and result of step 10
str(PennyIV)| str(Penny) | str(rankingvector)
# the structure of "PennyIV" is just one number, 3. Where as Penny ranking is a vector from 1:9.
# the structure of the ranking matrix gives a series of vectors

#lab3 step 12: data frame using the 4 vector rankings
#one way to make data frame:
dataframe <- data.frame(Self, Penny, Lenny, Stewie)
dataframe
#another way to make data frame:
as.data.frame(Self, Penny, Lenny, Stewie)

#step 13: using the cbind command, it produced a matrix that had row names such as (1), (2)etc...
#whereas the data frame created in step 12 seemed to have the row numbers for row names
dim(rankingvector)
dim(dataframe)
str(rankingvector)
str(dataframe)
#the str commands shows big differences between the two. 
#based off the dim command, both vectors had the same number of rows and columns

#step 14: vector of episode names as roman numerals. Made with text so we will put "quotes" around each element
epiromannum <- c("I", "II", "III", "IV", "V","VI", "VII", "VIII", "IX")

#step 15: adding actual names to the rows, other than numbers
row.names(dataframe) <- epiromannum
row.names(rankingvector) <- epiromannum

#step 16: i have accessed the third row of the ranking vector
#REMEMBER x[2,3] accesses element in second row, third column
#x[row,matrix] or x[c(specific rows),c(specific columns)]
rankingvector[3,] #access all of 3rd row

#step 17: access 4th column of dataframe
dataframe[,4] #access all of 4th column

#step 18: access self ranking for episode 5
dataframe[5,1]

#step 19: Penny's ranking episode II
dataframe[2,2]
 
#step 20: access everyone's ranking for epi. IV- VI
dataframe[4:6,]

#step 21: access everyone's ranking for epi II, V, and VII
dataframe[c(2,5,7),]

#step 22: acces just Penny and Stewie for eip. 4 and 6
dataframe[c(4,6),c(2,4)]

#step 23: switch Lenny's ranking for epi II and V
LennyII <- Lenny[2,3]
LennyV <- Lenny[5,3]
Lenny [2,3] <- LennynewII
Lenny[5,3] <- LennynewV

#check to see how it lookS:
rankingvector[,3]

#step 24: Accessing rows
rankingvector["III", "Lenny"]
dataframe["III", "Lenny"]

#step 25: Undo the swap made in episode 23
LennynewV <- rankingvector["II", "Lenny"]
LennynewII <- rankingvector["V", "Lenny"]
rankingvector["II", "Lenny"] <- LennynewII
rankingvector["V", "Lenny"] <- LennynewV

#check to see how it looks
rankingvector[, "Lenny"]

#step 26: RE-doing the swtich from step 23 using a different method. This method involves things like "$"
LennynewV <- rankingvector$Lenny[2]
LennynewII <- rankingvector$Lenny[5]
rankingvector$Lenny[2] <- LennynewII
rankingvector$Lenny[5] <- LennynewV

#check to see if it worked!
rankingvector$Lenny
