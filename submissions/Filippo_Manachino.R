# Exam "Informatica 2"
, 2025-09-04
# Peter Gruber and Paul Schneider
1
2
3
4
# Rules
5
# - Except for theoretical questions, all questions must be answered
using R! …
6
# - The exam takes 90 minutes and has 5 questions
7
# - There are a total of 100 points
8
# >>>>> SUBMIT your answers on iCorsi in time IMPORTANT!!! …
<---
9
10
11
12
13
14
15
16
17
18
19
20
…
21
22
23
24
25
26
27
28
29
30
31
32
# Material that you can use
# - the R help function
# - any printed material (open book)
# Notes
# - There are several ways how this exam can be solved.
# - What counts are ...
# + that your program works
# + that you follow the instructions
# + that the program fulfills the requirements
# - We do not expect you to provide exactly the solution presented in
class.
# Tip:
# - Use R to check your solution!
################################################
# 0: Filippo Manachino (2 points) #
################################################
# 0.1 Write your name below as a comment
# <Filippo Manachino>
33
################################################
34
# 1: R basics (13 points) #
35
################################################
36
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
…
not use the c() command.
37
v1 <- 10:1
38
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
…
not use the c() command.
39
v2 <- seq(3, 30, by=3)
40
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
41
M <- matrix(1:300, nrow=10, ncol=30)
42
# 1.4 Print the first row of M
43
M[1, ]
44
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
45
# regardless of the dimension of v1.
46v1[length(v1)]
47
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
48
((sqrt^5(12/(19-17))))
49
(log(1)+log(2))/((pi+1)/(pi-1))
50
log((sin(2))/(exp(1))^2)
51
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
52
u <- 10^(-5)
53
# 1.8 If you would now run the line
54
# print(U)
55
# you would get an error message. Which important concept of R is the
reason …
56
# for this error? Answer in 1 sentence as a comment.
57
#R is case-sensitive: U and u are different objects (different names)
58
59
################################################
60
# 2: Data and Logical conditions (20 points) #
61
################################################
62
# The file "Eudata.csv" contains data about the (still 28) EU countries.
63
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
64
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
65
66
67
68
# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
69
70
# 2.1 How many countries are there in the dataset?
71
nrow(Eudata) #this is just the command, to save this into a variable just
do n
countries <- nrow(Eudata) …
_
72
# 2.2 Calculate the total population of the EU
73
total
_pop <- sum(Eudata$Population)
74
# 2.3 Print the population of the smallest and largest EU country by Area
75
pop_
smallest
_
by_
area <- Eudata$Population[which.min(Eudata$Area)]
76
pop_
biggest
_
by_
area <- Eudata$Population[which.max(Eudata$Area)]
77
# 2.4 Calculate the number of countries that are members of the Eurozone
78
n
_
eurozone <- sum(Eudata$Eurozone==1)
79
# 2.5 Calculate the total GDP of all Eurozone members
80
gdp_
eurozone <- sum(Eudata$GDP[Eudata$Eurozone==1])
81
# 2.6 Calculate the GDP per capita in euros
82
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
83
total
_gdp <- sum(Eudata$GDP)
84
gdp_
eurozone <- sum(Eudata$GDP[Eudata$Eurozone==1])
85
gdp_
non
_
eurozone <- sum(Eudata$GDP[Eudata$Eurozone==0])
86
87
total
_gdp_pc <- total
_gdp/sum(Eudata$Population)
88
gdp_pc
_
eu <- gdp_
eurozone/sum(Eudata$Population[Eudata$Eurozone==1])
89
gpd
_pc
non
eu <-
_
_
eurozone/sum(Eudata$Population[Eudata$Eurozone==0]) …
gdp_
non
_
90
# 2.7 When was the EU founded?
91
# Hint: this must be the earliest year in which any country became a
member …
92
93
94
95
96
97
98
…
99
eu
_
founding <- min(Eudata$Accession)
# 2.8 Calculate the number of EU founding members
total
_
founders <- sum(Eudata$Accession==1953)
# 2.9 Only now you discover that the data set still contains the UK.
# Permanently remove the UK from the dataframe "Eudata"
Eudata <- subset(Eudata, Code != "UK")
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
January 2026.
# Permanently update the dataframe "Eudata" accordingly.
100
101
102
################################################
103
# 3: Simulation and probability (15 points) #
104
################################################
105
# 3.1 Use R to produce one roll of a dice.
106
dice <- sample(1:6, 1)
107
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
108
k <- sample(1:6, 1000, replace = TRUE)
109
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
110
# a "4" or "5" from a dice
111
p4
_p5 <- mean(k==4|k==5)
112
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
113
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
114
# and variance of the random variable z = 2k-m
115
m <- sample(1:6, 1000, replace = TRUE)
116
z <- 2*k-m
117
Expected <- mean(z)
118
Variance <- var(z)
119
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
120
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
121
stock <- rnorm(n = 100,mean = 0.12, sd = 0.2)
122
# 3.6 What is the probability of a negative stock return?
123
# Answer this question ...
124
# (a) by using the variable "stock" from (3.5)
125
p_
neg_
hat <- mean(stock<0)
126
# (b) by calculating the (theoretical) probability for a normal
distribution …
127
p_
neg_
theory <- pnorm(0, mean = 0.12, sd = 0.2)
128
129
130
131
132
133
134
135
136
137
138
################################################
# 4: Functions and Optimization (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R
f <- function(x){x^2}
# 4.2 Calculate the value of f for x=1
f(1)
# 4.3 Create a plot of the function for the interval [-2, 2]
# If in doubt, type "?plot" to get the help file for the function
x <- seq(-2,2,length.out=100)
139
140
141
142
143
144
145
plot(x,f(x),type="l")
# 4.4 Numerically, by using R, find the location of the minimum using the
optim …
# function. Store the result of your minimization (the location of
the minimum) …
# in a variable called xmin
xmin <- optim(0, f, method = "L-BFGS-B"
,lower=-2, upper=2)
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
-2 and 2.
in a …
# variable called xmin
_grid
x <- seq(-2,2,length.out=100)
xmin
_grid <- grid()
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
# are not identical. Why?
# yourself. Choose N=100 grid points. Search in an interval between
…
146
# Store the result of your minimization (the location of the minimum)
147
148
149
150
151
152
153
154
y####################################################
155
# 5: Functions and algorithms (25 points) #
156
####################################################
157
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
158
# like this
159
# a) process individual digits from right to left
160
# b) leave digits number 1,3,5 etc (counted from right) unchanged
161
# c) multiply digits 2,3,6 etc (counted from right) by 2, the
sequence in ambigous, i used 2,4,6 etc …
162
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
163
# e) calculate the sum of all (processed) digits
164
# IF the result can be divided by 10, the number is a valid credit
…
card number
165
#
166
# Example: 63487
167
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
168
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
169
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
170
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
171
# For instance, 7 %% 4 gives 3
172
173
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
174
# and returns TRUE if the number is a valid number and FALSE if it is not
…valid.
175
176
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
177
# You can use this to test your function
178
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
179
# right to left.
180
#the sequence in ambigous, i used 2,4,6 etc
181
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
182
d <- c(2,4,7,3,0,1,0,1,0,7,1,7,9,1,0,5)
183
checkLuhn <- function(d){digits}
184
for (i in 1:16){
185
if (d=="1,3,5,7,9"){
186
creditnumber <- d
187
}
188
189
190
191
192
else if(d=="2,4,6,8"){
h <- d*2
if(h>9){
h <- h-9
creditnumber <- h
193
}
194
}
195
}
196
#unfortunately i dont remember how to code it, the base idea of my
algorithm was to create a for cycle that would scan the vector number by …
number using an if condition …
197
#if the number was 1,3,5,7,9 it would add it to a vector called
creditnumber, else if the number was 2,4,6,8 it would first multiply it …
by 2 then with the other if it would check …
198
#if the number was >9 in that case it would divide by 2 and then add it
…
to the vector
199
#at the end outside the vector i would have summed it and checked if the
division by 10 would leave an integer or no so to determine if the credit…
number was valid or no …
200
201
