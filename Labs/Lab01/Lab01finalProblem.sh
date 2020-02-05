cut -f 2-4 -d, PredPreyData.csv | head -n 1 > lab01finalProblem.csv    #This command takes the output of columns 2-4 and adds the first row of PredPreyData.csv
cut -f 2-4 -d, PredPreyData.csv | tail -n 10 >> lab01finalProblem.csv  #This command takes the output of columns 2-4 and adds the last 10 rows of PredPreyData.csv

#both of these commands are made into a new file named lab01finalProblem.csv