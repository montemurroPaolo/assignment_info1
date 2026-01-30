# Exam "Informatica 2"
, 2025-09-04
# Peter Gruber and Paul Schneider
# Rules
# - Except for theoretical questions, all questions must be answered
using R! …
# - The exam takes 90 minutes and has 5 questions
# - There are a total of 100 points
# >>>>> SUBMIT your answers on iCorsi in time IMPORTANT!!! …
<---
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
# <your name>
<Matteo Zucchi>
################################################
# 1: R basics (13 points) #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
not use the c() command.
v1 <- 10:1
v1
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
not use the c() command.
v2 <- seq(3, 30, 3)
v2
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
M= rbind(seq(1, 291, 10), seq(2, 292, 10), seq(3, 293, 10), seq(4, 294,
10), seq(10, 300, 10)) …
# 1.4 Print the first row of M
M[1,]
1
2
3
4
5
6
7
8
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
33
34
35
36
…
37
38
39
…
40
41
42
43
44
45
46
# 1.5 Display the last element of v1. Tell R to "display the last element
46…
47
48
49
50
51
52
53
54
55
56
57
…
58
59
of x"
,
# regardless of the dimension of v1.
tail(v1,1)
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
(12/(19-7))^(1/5)
(log10(1)+log10(2))/((pi+1)/(pi-1))
log10(sin(2)/exp(2))
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
u= 10^(-5)
# 1.8 If you would now run the line
# print(U)
# you would get an error message. Which important concept of R is the
reason
# for this error? Answer in 1 sentence as a comment.
--> Because R is case sensitive
60
61
################################################
62
# 2: Data and Logical conditions (20 points) #
63
################################################
64
# The file "Eudata.csv" contains data about the (still 28) EU countries.
65
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
66
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
67
68
69
70
# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
71
72
# 2.1 How many countries are there in the dataset?
73
nrow(Eudata)
74
# 2.2 Calculate the total population of the EU
75
sum=(Eudata$Population)
76
# 2.3 Print the population of the smallest and largest EU country by Area
77
smallest= Eudata$Population[which.min(Eudata$Area)]
78
largest= Eudata$Population[which.max(Eudata$Area)]
79
# 2.4 Calculate the number of countries that are members of the Eurozone
80
sum(Eudata$Eurozone == TRUE)
81
# 2.5 Calculate the total GDP of all Eurozone members
82
sum(Eudata$GDP[Eudata$Eurozone == TRUE])
83
# 2.6 Calculate the GDP per capita in euros
84
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
85
sum(Eudata$GDP/Eudata$Population) # (a)
86
sum(Eudata$GDP[Eudata$Eurozone == TRUE]/Eudata$Population[Eudata$Eurozone
== TRUE]) #(b) …
87
sum(Eudata$GDP[Eudata$Eurozone ==
FALSE]/Eudata$Population[Eudata$Eurozone == FALSE]) # (c) …
88
# 2.7 When was the EU founded?
89
# Hint: this must be the earliest year in which any country became a
member …
90min(Eudata$Accession)
91
92
93
94
95
96
…
97
98
# 2.8 Calculate the number of EU founding members
sum(Eudata$Accession == 1953)
# 2.9 Only now you discover that the data set still contains the UK.
# Permanently remove the UK from the dataframe "Eudata"
Eudata= Eudata[-28,]
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
January 2026.
# Permanently update the dataframe "Eudata" accordingly.
Eudata= Eudata[Eudata$CountyName ]
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
dice= sample(1:6, 1, TRUE)
106
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
107
k= sample(1:6, 1000, TRUE)
108
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
109
# a "4" or "5" from a dice
110
mean(k == 4 | k == 5)
111
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
112
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
113
# and variance of the random variable z = 2k-m
114
m= sample(1:6, 1000, TRUE)
115
z= 2*k-m
116
mean(z)
117
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
118
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
119
stock= rnorm(100, 0.12, 0.2)
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
mean(stock<0) #(a)
125
pnorm(0, 0.12, 0.2) #(b)
126
127
128
129
130
131
132
################################################
# 4: Functions and Optimization (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R
f= function(x){
x^2
133
134
# 4.2 Calculate the value of f for x=1
135
}
f(1)
136
137
# 4.3 Create a plot of the function for the interval [-2, 2]
# If in doubt, type "?plot" to get the help file for the function
138
curve(f,
-2, 2)
139
# 4.4 Numerically, by using R, find the location of the minimum using the
optim …
140
# function. Store the result of your minimization (the location of
the minimum) …
141
# in a variable called xmin
142
neg_
f= function(x){
143
-f(x)
144
145
146
147
148
…
149
…
}
res= optim(par=0, fn = neg_
f,method = "Brent"
xmin= res$par
print(xmin)
search
-2 and 2.
in a …
# variable called xmin
_grid
grid()
xmin
_grid
and (4.5) …
# are not identical. Why?
, lower = -2, upper = 2)
# 4.5 Now try to find the location of the minimum by implementing a grid
# yourself. Choose N=100 grid points. Search in an interval between
150
# Store the result of your minimization (the location of the minimum)
151
152
153
154
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
155
156
157
158
y####################################################
159
# 5: Functions and algorithms (25 points) #
160
####################################################
161
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
162
# like this
163
# a) process individual digits from right to left
164
# b) leave digits number 1,3,5 etc (counted from right) unchanged
165
# c) multiply digits 2,3,6 etc (counted from right) by 2
166
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
167
# e) calculate the sum of all (processed) digits
168
# IF the result can be divided by 10, the number is a valid credit
card number …
169
#
170
# Example: 63487
171
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
172
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
173
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
174
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
175
176
# For instance, 7 %% 4 gives 3
177
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
178
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
179
180
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
181
# You can use this to test your function
182
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
183
# right to left.
184
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
185
186
187
188
checkLuhn <- function(x){
counter<- 0
digits<-
189
}
190
191
