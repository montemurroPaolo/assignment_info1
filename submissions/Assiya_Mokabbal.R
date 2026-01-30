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
# 0: Your name (2 points) #
################################################
# 0.1 Write your name below as a comment
# <Mokabbal Assiya>
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
v1 = seq(10, 1,
-1)
38
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
…
not use the c() command.
39
v2 = seq(3, 30, 3)
40
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
41
M = rbind(seq(1, 291, 10), seq(2, 292, 10), seq(3, 292, 10), seq(4, 294,
10), seq(10, 300, 10)) …
42
# 1.4 Print the first row of M
43
M[1,]
44
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
45# regardless of the dimension of v1.
46
tail(v1, 1)
47
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
48
(12-(19-7))^1/5
49
log(1)+log(2)/((pi+1)/(pi-1))
50
log(sin(2)/exp(2))
51
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
52
u = 10^(-5)
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
58
"R is case sensitive"
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
nrow(Eudata)
72
# 2.2 Calculate the total population of the EU
73
sum(Eudata$Population)
74
# 2.3 Print the population of the smallest and largest EU country by Area
75
smallest= Eudata$Population[which.min(Eudata$Area)]
76
largest= Eudata$Population[which.max(Eudata$Area)]
77
# 2.4 Calculate the number of countries that are members of the Eurozone
78
sum(Eudata$Eurozone==TRUE)
79
# 2.5 Calculate the total GDP of all Eurozone members
80
sum(Eudata$GDP[Eudata$Eurozone == TRUE])
81
# 2.6 Calculate the GDP per capita in euros
82
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
83
84
GDP
_per
_
capita
_
EU = sum(Eudata$GDP/Eudata$Population)
85
GDP
Eurozone =
_
sum(Eudata$GDP[Eudata$Eurozone]/Eudata$Population[Eudata$Eurozone]) …
86
GDP
non
EU =
_
_
…
sum(Eudata$GDP[Eudata$Eurozone==FALSE]/Eudata$Population[Eudata$Eurozone=
=FALSE]) …
87
88
# 2.7 When was the EU founded?
89
# Hint: this must be the earliest year in which any country became a
member …
90
91
92
93
94
95
96
…
97
98
min(Eudata$Accession)
# 2.8 Calculate the number of EU founding members
sum(Eudata$Accession == 1953)
# 2.9 Only now you discover that the data set still contains the UK.
# Permanently remove the UK from the dataframe "Eudata"
Eudata = Eudata[Eudata$CountyName !="United Knigdom"
, ]
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
January 2026.
# Permanently update the dataframe "Eudata" accordingly.
Eudata = Eudata[Eudata$Eurozone == "Bulgaria" ]
99
100
101
################################################
102
# 3: Simulation and probability (15 points) #
103
################################################
104
# 3.1 Use R to produce one roll of a dice.
105
dice = sample(1:6, 1, replace= TRUE)
106
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
107
k= sample(1:6, 1000, replace = TRUE)
108
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
109
# a "4" or "5" from a dice
110
mean(k==4 | k==5)
111
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
112
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
113
# and variance of the random variable z = 2k-m
114
m = sample(1:6, 1000, replace = TRUE)
115
z = 2*k-m
116
mean(z)
117
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
118
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
119
returns
_
stock = rnorm(100, 0.12, 0.2)
120
# 3.6 What is the probability of a negative stock return?
121
# Answer this question ...
122
# (a) by using the variable "stock" from (3.5)
123
# (b) by calculating the (theoretical) probability for a normal
distribution …
124
mean(returns
stock > 0)
_
125
pnorm(0, 0.12, 0.2)
126
################################################
127
# 4: Functions and Optimization (25 points)#
128
################################################
129
# 4.1 Create the function f(x)=x^2 in R
130
f = function(x){x^2}
131
# 4.2 Calculate the value of f for x=1
132
f(1)
133
# 4.3 Create a plot of the function for the interval [-2, 2]
134
# If in doubt, type "?plot" to get the help file for the function
135
curve(f,
-2, 2)
136# 4.4 Numerically, by using R, find the location of the minimum using the
136…
optim
137
# function. Store the result of your minimization (the location of
the minimum) …
138
# in a variable called xmin
139
neg_
f = function(x){
140
-f(x)
141
}
142
res <- optim(par=0, fn= neg_
f, method = "Brent"
, lower = -2, upper = 2)
143
xmin <- res$par
144
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
145
# yourself. Choose N=100 grid points. Search in an interval between
…
-2 and 2.
146
# Store the result of your minimization (the location of the minimum)
in a …
147
# variable called xmin
_grid
148
149
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
150
# are not identical. Why?
151
152
153
y####################################################
154
# 5: Functions and algorithms (25 points) #
155
####################################################
156
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
157
# like this
158
# a) process individual digits from right to left
159
# b) leave digits number 1,3,5 etc (counted from right) unchanged
160
# c) multiply digits 2,3,6 etc (counted from right) by 2
161
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
162
# e) calculate the sum of all (processed) digits
163
# IF the result can be divided by 10, the number is a valid credit
…
card number
164
#
165
# Example: 63487
166
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
167
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
168
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
169
# Hint: The operation x %% y yields the remainder of the division
x/y.
…
170
# For instance, 7 %% 4 gives 3
171
172
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
173
# and returns TRUE if the number is a valid number and FALSE if it is not
…valid.
174
175
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
176
# You can use this to test your function
177
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
178
# right to left.
179
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))