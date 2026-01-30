# Exam "Informatica 2", 2025-09-04
# Peter Gruber and Paul Schneider

# Rules
# - Except for theoretical questions, all questions must be answered using R!
# - The exam takes 90 minutes and has 5 questions
# - There are a total of 100 points 
# >>>>> SUBMIT your answers on iCorsi in time                       <--- IMPORTANT!!!

# Material that you can use
# - the R help function
# - any printed material (open book)

# Notes
# - There are several ways how this exam can be solved.
# - What counts are ...
#   + that your program works
#   + that you follow the instructions
#   + that the program fulfills the requirements
# - We do not expect you to provide exactly the solution presented in class.

# Tip: 
# - Use R to check your solution!


################################################
# 0: Your name    (2 points)                   #
################################################
# 0.1 Write your name below as a comment
# <your name>


################################################
# 1: R basics    (13 points)                   #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do not use the c() command.

# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do not use the c() command.

# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.

# 1.4 Print the first row of M

# 1.5 Display the last element of v1. Tell R to "display the last element of x",
#     regardless of the dimension of v1.

# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.

# 1.7 Create a variable "u" with the value "ten to the power minus 5"

# 1.8 If you would now run the line
# print(U)
# you would get an error message. Which important concept of R is the reason
# for this error? Answer in 1 sentence as a comment.


################################################
# 2: Data and Logical conditions  (20 points)  #
################################################
# The file "Eudata.csv" contains data about the (still 28) EU countries.
# The columns are: County Name, Code, Capital, Accession (=Year of membership), 
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if member)

# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv', sep=";",header=TRUE)

# 2.1 How many countries are there in the dataset?

# 2.2 Calculate the total population of the EU

# 2.3 Print the population of the smallest and largest EU country by Area

# 2.4 Calculate the number of countries that are members of the Eurozone

# 2.5 Calculate the total GDP of all Eurozone members

# 2.6 Calculate the GDP per capita in euros
#     (a) of the total EU, (b) of the Eurozone  (c) of the non-Eurozone EU

# 2.7 When was the EU founded?
#     Hint: this must be the earliest year in which any country became a member

# 2.8 Calculate the number of EU founding members

# 2.9 Only now you discover that the data set still contains the UK.
#     Permanently remove the UK from the dataframe "Eudata"

# 2.10 You also discover that Bulgaria actually joined the Euro on 1st January 2026.
#      Permanently update the dataframe "Eudata" accordingly.



################################################
# 3: Simulation and probability   (15 points)  #
################################################
# 3.1 Use R to produce one roll of a dice.

# 3.2 Create a vector called "k" that contains 1000 rolls of a dice

# 3.3 Using "k" from (3.2), estimate the probability of obtaining
#     a "4" or "5" from a dice 

# 3.4 Create a vector called "m" that contains 1000 (different) rolls of a dice
#     Using "k" and "m" from (3.2) and (3.4), estimate the expected value 
#     and variance of the random variable z = 2k-m

# 3.5 Assume the yearly stock return to be normally distributed with a mean of 0.12 and
#     a standard deviation of 0.2. Create a variable "stock" with 100 draws of stock returns

# 3.6 What is the probability of a negative stock return?
#     Answer this question ...
#     (a) by using the variable "stock" from (3.5)
#     (b) by calculating the (theoretical) probability for a normal distribution


################################################
# 4: Functions and Optimization     (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R

# 4.2 Calculate the value of f for x=1

# 4.3 Create a plot of the function for the interval [-2, 2]
#     If in doubt, type "?plot" to get the help file for the function

# 4.4 Numerically, by using R, find the location of the minimum using the optim 
#     function. Store the result of your minimization (the location of the minimum)
#     in a variable called xmin

# 4.5 Now try to find the location of the minimum by implementing a grid search
#     yourself. Choose N=100 grid points. Search in an interval between -2 and 2.
#     Store the result of your minimization (the location of the minimum) in a 
#     variable called xmin_grid

# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4) and (4.5)
#     are not identical. Why?


y####################################################
# 5: Functions and algorithms    (25 points)       #
####################################################
# 5.1  The Luhn Algorithm is used to check whether a credit card number is valid. It goes
#      like this
#      a) process individual digits from right to left
#      b) leave digits number 1,3,5 etc (counted from right) unchanged
#      c) multiply digits 2,3,6 etc  (counted from right) by 2
#      d) if a digit (after multiplying by 2) is larger than 9, subtract 9
#      e) calculate the sum of all (processed) digits
#      IF the result can be divided by 10, the number is a valid credit card number
#
#      Example: 63487
#      Right to left: do not change 7, multiply 8 by 2 and subtract 9, do not change 4,
#                     multiply 3 by 2 and do not subtract anything, do not change 6
#                     7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is valid
#      Hint: The operation x %% y yields the remainder of the division x/y. 
#            For instance, 7 %% 4 gives 3

# Write a function called checkLuhn that takes as argument a vector of individual digits 
# and returns TRUE if the number is a valid number and FALSE if it is not valid.

# The follwing line takes a *valid* credit card number and creates a vector with single digits.
# You can use this to test your function
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn algorithm works from
# right to left.
digits <- as.numeric(unlist(strsplit("5019717010103742","")))


