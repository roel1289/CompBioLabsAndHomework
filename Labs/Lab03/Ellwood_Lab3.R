#lab3 Part 1: Basic Operations
#lab3 step 3: "chips"= number of bags of chips began with at night. "guests"= number of guests coming to party.
chips <- 5   
guests <- 8  

#lab3 step 5: "bagperguest" = average number of bags of chips each guest will eat
bagperguest <- 0.4

#lab3 step 7: Below I have shown the expected amount of chips leftover.I created a new variable Called "eaten" = amount of chips eaten
eaten <- guests * bagperguest #amount of chips consumed
chips - eaten - 0.4 #amount chips leftover minus what host ate
# COMMENT FROM SMF: Note that lines 10-11 do not account for those chips eaten by the host

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
rankingmatrix <- cbind(Self, Penny, Lenny, Stewie)
rankingmatrix #result of cbind is a matrix
# COMMENT FROM SMF: Note that the object created on line 26 and viewed on line 27 is NOT actually a vector but rather a matrix

#lab3 step 11: inspect structure of PennyIV, Penny and result of step 10
str(PennyIV)
str(Penny)
str(rankingmatrix)
# the structure of "PennyIV" is just one number, 3. Where as Penny ranking is a vector from 1:9.
# the structure of the ranking matrix gives a series of vectors
# COMMENT FROM SMF: Using the vertical bar to separate commands as in line 31 is NOT preferred syntax in R.
# COMMENT FROM SMF: Instead it would be much better to put each of the three commands on its own separate line.

#lab3 step 12: data frame using the 4 vector rankings
#one way to make data frame:
rankingdataframe <- data.frame(Self, Penny, Lenny, Stewie)
rankingdataframe
# COMMENT FROM SMF: Better to name it something more descriptive than "dataframe", especially since data.frame is already a name taken by R
#another way to make data frame:
as.data.frame(rankingdataframe)
# COMMENT FROM SMF: Note that line 43 produces an error message.  The function as.data.frame() takes a matrix as its input, and NOT a list of vectors

#step 13: using the cbind command, it produced a matrix that had row names such as (1), (2)etc...
#whereas the data frame created in step 12 seemed to have the row numbers for row names
dim(rankingmatrix)
dim(rankingdataframe)
str(rankingmatrix)
str(rankingdataframe)
#the str commands shows big differences between the two. 
#based off the dim command, both vectors had the same number of rows and columns

#step 14: vector of episode names as roman numerals. Made with text so we will put "quotes" around each element
epiromannum <- c("I", "II", "III", "IV", "V","VI", "VII", "VIII", "IX")

#step 15: adding actual names to the rows, other than numbers
row.names(rankingdataframe) <- epiromannum
row.names(rankingmatrix) <- epiromannum

#step 16: i have accessed the third row of the ranking vector
#REMEMBER x[2,3] accesses element in second row, third column
#x[row,matrix] or x[c(specific rows),c(specific columns)]
rankingmatrix[3,] #access all of 3rd row

#step 17: access 4th column of dataframe
rankingdataframe[,4] #access all of 4th column

#step 18: access self ranking for episode 5
rankingdataframe[5,1]

#step 19: Penny's ranking episode II
rankingdataframe[2,2]
 
#step 20: access everyone's ranking for epi. IV- VI
rankingdataframe[4:6,]

#step 21: access everyone's ranking for epi II, V, and VII
rankingdataframe[c(2,5,7),]

#step 22: acces just Penny and Stewie for eip. 4 and 6
rankingdataframe[c(4,6),c(2,4)]

#step 23: switch Lenny's ranking for epi II and V
LennyII <- Lenny[2]
LennyV <- Lenny[5]
Lenny[5] <- LennynewII   #from 86-89 I indexed variables, named them, then swapped them
Lenny[2] <- LennynewV

# COMMENT FROM SMF: The steps in line 86-89 could work, but the variables aren't properly named or defined.
# COMMENT FROM SMF: Note the following error messages that I got when running the code:
# COMMENT FROM SMF: > LennyII <- Lenny[2,3]
  #                 Error in Lenny[2, 3] : incorrect number of dimensions
  #                 > LennyV <- Lenny[5,3]
  #                 Error in Lenny[5, 3] : incorrect number of dimensions
  #                 > Lenny [2,3] <- LennynewII
  #                 Error: object 'LennynewII' not found
  #                 > Lenny[5,3] <- LennynewV
  #                 Error: object 'LennynewV' not found



#check to see how it lookS:
rankingmatrix[,3]

#step 24: Accessing rows
rankingmatrix["III", "Lenny"]
rankingdataframe["III", "Lenny"]

#step 25: Undo the swap made in episode 23
LennynewV <- rankingmatrix["II", "Lenny"]
LennynewII <- rankingmatrix["V", "Lenny"]
rankingmatrix["II", "Lenny"] <- LennynewII
rankingmatrix["V", "Lenny"] <- LennynewV

#check to see how it looks
rankingmatrix[, "Lenny"]

#step 26: RE-doing the swtich from step 23 using a different method. This method involves things like "$"
LennynewV <- rankingdataframe$Lenny[2]
LennynewII <- rankingdataframe$Lenny[5] #swapping variables-- Can only use "$" for data frames (not vectors/matrices)
rankingdataframe$Lenny[2] <- LennynewII
rankingdataframe$Lenny[5] <- LennynewV

#check to see if it worked!
rankingdataframe$Lenny

# COMMENT FROM SMF:  Lines 121-127 generated a number of error messages for me.  Note that the "$" method for 
# COMMENT FROM SMF:  accessing elements only works for data frames (not matrices or vectors)