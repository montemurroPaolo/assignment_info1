# Exam "Informatica 2"
, 2025-09-04
# Peter Gruber and Paul Schneider
# Rules
# - Except for theoretical questions, all questions must be answered
using R! …
# - The exam takes 90 minutes and has 5 questions
# - There are a total of 100 points
# >>>>> SUBMIT your answers on iCorsi in time IMPORTANT!!! …
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
37
…
38
39
40
…
41
42
43
44
45
46
47
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
# Samuel Boccomino
################################################
# 1: R basics (13 points) #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
not use the c() command.
v1 <- seq(from = 10, to = 1, by = -1)
v1
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
not use the c() command.
v2 <- seq(from = 3, to = 30, by = 3)
v2
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
r1 <- seq(from = 1, to = 291, by = 10)
r2 <- seq(from = 2, to = 292, by = 10)
r3 <- seq(from = 3, to = 293, by = 10)
r4 <- seq(from = 4, to = 294, by = 10)
48
49
r5 <- seq(from = 10, to = 300, by = 10)
M <- rbind(r1, r2, r3, r4, r5)
50
M
51
# 1.4 Print the first row of M
52
M[1 ,]
53
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
54
# regardless of the dimension of v1.
55
tail(v1, 1)
56
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
57
((12/(19-7)))^(1/5)
58
(log(1)+log(2))/((pi+1)/(pi-1))
59
log(sin(2)/(exp(1))^2)
60
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
61
u <- 10^(-5)
62
63
64
65
…
u
# 1.8 If you would now run the line
# print(U)
# you would get an error message. Which important concept of R is the
reason
66
# for this error? Answer in 1 sentence as a comment.
67
68
# It doesn't work because R is case sensitive, so U is different from u.
69
70
################################################
71
# 2: Data and Logical conditions (20 points) #
72
################################################
73
# The file "Eudata.csv" contains data about the (still 28) EU countries.
74
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
75
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
76
77
# The following line loads the data into an R dataframe
78
# Hunt: Use Session/Set Working Directory/To Source File Location
79
Eudata <- read.table('Eudata-2.csv'
, sep=";"
,header=TRUE)
80
# 2.1 How many countries are there in the dataset?
81
nrow(Eudata)
82
# 2.2 Calculate the total population of the EU
83
sum(Eudata$Population)
84
# 2.3 Print the population of the smallest and largest EU country by Area
85
Eudata$Population[which.min(Eudata$Area)]
86
Eudata$Population[which.max(Eudata$Area)]
87
# 2.4 Calculate the number of countries that are members of the Eurozone
88
sum(Eudata$Eurozone==TRUE)
89
# 2.5 Calculate the total GDP of all Eurozone members
90
sum(Eudata$GDP[Eudata$Eurozone==TRUE])
91
# 2.6 Calculate the GDP per capita in euros
92
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
93
# (a)
94total
GDP
_
_
euros <- sum(Eudata$GDP)*10^6
95
total
_population <- sum(Eudata$Population)
96
GDP
_per
_
capita
total <- total
GDP
_
_
_
euros / total
_population
97
GDP
_per
_
capita
total
_
98
# (b)
99
GDP
_
eurozone <- sum(Eudata$GDP[Eudata$Eurozone==TRUE])*10^6
100
pop_
eurozone <- sum(Eudata$Population[Eudata$Eurozone==TRUE])
101
GDP
_per
_
capita
eurozone <- GDP
_
_
eurozone/ pop_
eurozone
102
GDP
_per
_
capita
eurozone
_
103
# (c)
104
GDP
non
_
_
euro <- sum(Eudata$GDP[Eudata$Eurozone==FALSE])*10^6
105
pop_
non
_
euro <- sum(Eudata$Population[Eudata$Eurozone==FALSE])
106
GDP
_per
_
capita
non
euro <- GDP
non
_
_
_
_
euro / pop_
non
euro
_
107
GDP
_per
_
capita
non
euro
_
_
108
# 2.7 When was the EU founded?
109
# Hint: this must be the earliest year in which any country became a
member …
110
min(Eudata$Accession)
111
# 2.8 Calculate the number of EU founding members
112
sum(Eudata$Accession==1953)
113
# 2.9 Only now you discover that the data set still contains the UK.
114
# Permanently remove the UK from the dataframe "Eudata"
115
Eudata <- Eudata[Eudata$CountyName!="United Kingdom"
, ]
116
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
…
January 2026.
117
# Permanently update the dataframe "Eudata" accordingly.
118
119
################################################
120
# 3: Simulation and probability (15 points) #
121
################################################
122
# 3.1 Use R to produce one roll of a dice.
123
dice
_
roll <- sample(1:6,1)
124
dice
roll
_
125
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
126
k <- sample(1:6,1000,replace = TRUE)
127
k
128
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
129
# a "4" or "5" from a dice
130
p4 <- k[k==4]
131
p5 <- k[k==5]
132
probability <- (length(p4)+length(p5))/1000
133
probability
134
percentage <- ((length(p4)+length(p5))/1000)*100
135
percentage
136
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
137
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
138
# and variance of the random variable z = 2k-m
139
m <- sample(1:6,1000,replace = TRUE)
140
m
141
z <- 2*k-m
142
z
143
mean(z)
144
var(z)
145
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
146
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
147
stock <- rnorm(100,mean=0.12,sd=0.2)
148
stock
149
# 3.6 What is the probability of a negative stock return?
150
# Answer this question ...
151
# (a) by using the variable "stock" from (3.5)
152
# (b) by calculating the (theoretical) probability for a normal
distribution …
153
154
# (a)
155
negative
stock
_
_
return1 <- sum(stock<0)/length(stock)
156
negative
stock
return1
_
_
157
# (b)
158
negative
stock
_
_
return2 <- pnorm(0,mean=0.12,sd=0.2)
159
negative
stock
return2
_
_
160
################################################
161
# 4: Functions and Optimization (25 points)#
162
################################################
163
# 4.1 Create the function f(x)=x^2 in R
164
f <- function(x){x^2}
165
# 4.2 Calculate the value of f for x=1
166
f(1)
167
# 4.3 Create a plot of the function for the interval [-2, 2]
168
# If in doubt, type "?plot" to get the help file for the function
169
curve(f,
-2,2)
170
# 4.4 Numerically, by using R, find the location of the minimum using the
…
optim
171
# function. Store the result of your minimization (the location of
the minimum) …
172
# in a variable called xmin
173
xmin <- optim(-2, f, method = 'L-BFGS-B'
, lower = -2, upper = 2)
174
xmin
175
# just the par:
176
xmin$par
177
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
178
# yourself. Choose N=100 grid points. Search in an interval between
…
-2 and 2.
179
# Store the result of your minimization (the location of the minimum)
in a …
180
# variable called xmin
_grid
181
grid <- seq(from = -2, to = 2, by = 0.04)
182
best
value <- Inf
_
183
best
x <- NA
_
184
for(x in grid){
185
current
value <- f(x)
_
186
if(current
value < best
value){
_
_
187best
value <- current
value
_
_
188
best
x <- x
_
189
}
190
}
191
xmin
_grid <- print(best
value)
_
192
cat("Minimum of the function:"
, best
_
value,
"\n")
193
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
194
# are not identical. Why?
195
196
# Because f(x) is a continuos function
197
198
####################################################
199
# 5: Functions and algorithms (25 points) #
200
####################################################
201
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
202
# like this
203
# a) process individual digits from right to left
204
# b) leave digits number 1,3,5 etc (counted from right) unchanged
205
# c) multiply digits 2,3,6 etc (counted from right) by 2
206
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
207
# e) calculate the sum of all (processed) digits
208
# IF the result can be divided by 10, the number is a valid credit
…
card number
209
#
210
# Example: 63487
211
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
212
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
213
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
214
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
215
# For instance, 7 %% 4 gives 3
216
217
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
218
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
219
220
checkLuhn <- function(credit
card
number){
_
_
221
digits <-
number)))) …
as.numeric(unlist(strsplit(as.character(credit-card
_
222
n <- lenght(digits)
223
for(i in seq(n, 1,
-2)){
224
if(i>1){
225
digits[i-1] <- digits[i-1]*2
226
if(digits[i-1]>9)
227
digits[i-1] <- digits[i-1]-9
228
}
229
230
231
232
…
233
234
…
235
236
237
238
239
}
return(sum(digits)%%10==0)
}
# The follwing line takes a *valid* credit card number and creates a
vector with single digits.
# You can use this to test your function
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from
# right to left.
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
digits
Saved: 13.01.26, 15:29:50 Page 1/6
Printed for: Peter Gruber
