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
# Spiatta Damiano
################################################
# 1: R basics (13 points) #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
not use the c() command.
v1<- 10:1
v1
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
not use the c() command.
v2 <- seq(3,30, by = 3)
v2
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
M <- matrix(1:300, nrow = 10, ncol = 30)
head(M)
# 1.4 Print the first row of M
print(M[1,])
# 1.5 Display the last element of v1. Tell R to "display the last element
47…
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
58
…
of x"
,
# regardless of the dimension of v1.
print(v2[length(v2)])
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
(12/(19-7)^(1/5)
(log(1)+log(2))/((pi+1)/(pi-1))
log(sin(2)/exp(2))
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
u <- 10^(-5)
# 1.8 If you would now run the line
# print(U)
# you would get an error message. Which important concept of R is the
reason
59
# for this error? Answer in 1 sentence as a comment.
60
61
…
#R in case sensitive, capital letters are not equals as normal letter. v1
is different than V1
62
63
################################################
64
# 2: Data and Logical conditions (20 points) #
65
################################################
66
# The file "Eudata.csv" contains data about the (still 28) EU countries.
67
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
68
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
69
70
71
72
# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
73
74
# 2.1 How many countries are there in the dataset?
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
sum()
# 2.2 Calculate the total population of the EU
sum(myData$Population)
# 2.3 Print the population of the smallest and largest EU country by Area
myData$Population[which.min(myData$Area)]
myData$Population[which.max(myData$Area)]
# 2.4 Calculate the number of countries that are members of the Eurozone
sum(myData$IsEurozone == 1)
# 2.5 Calculate the total GDP of all Eurozone members
sum(myData$GDP[myData$IsEurozone == 1])
# 2.6 Calculate the GDP per capita in euros
#(a) of the total EU,
sum(myData$GDP) / sum(myData$Population)
#(b) of the Eurozone
sum(myData$GDP[myData$IsEurozone == 1]) /
sum(myData$Population[myData$IsEurozone == 1])
#(c) of the non-Eurozone EU
sum(myData$GDP[myData$IsEurozone != 1]) /
sum(myData$Population[myData$IsEurozone != 1])
# 2.7 When was the EU founded?
95
# Hint: this must be the earliest year in which any country became a
…
96
97
98
99
100
101
102
…
103
104
member
myData$Accession == min(myData$Accession[myData$IsEurozone != 1])
# 2.8 Calculate the number of EU founding members
EU
_
founders <- sum(myData$Accession == 1953)
# 2.9 Only now you discover that the data set still contains the UK.
# Permanently remove the UK from the dataframe "Eudata"
Eudata[Eudata$CountryName != "United Kingdom"
, ]
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
January 2026.
# Permanently update the dataframe "Eudata" accordingly.
Eudata$Eurozone[Eudata$CountryName == "Bulgaria"] <- TRUE
105
106
107
################################################
108
# 3: Simulation and probability (15 points) #
109
################################################
110
# 3.1 Use R to produce one roll of a dice.
111
dice <- sample(1:6, size = 1, replace = TRUE)
112
dice
113
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
114
n <- 1000
115
k <- c(sample(1:6, size = n, replace = TRUE))
116
k
117
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
118
# a "4" or "5" from a dice
119
prob
4
or
_
_
_
5 <- mean(k %in% c(4, 5))
120
prob
4
or
5
_
_
_
121
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
122
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
123
# and variance of the random variable z = 2k-m
124
m <- sample(1:6, size = n, replace = TRUE)
125
z <- 2*k - m
126
127
expected
128
expected
129
variance
value
value
z
_
_
z <- var(z)
z <- mean(z)
_
_
_
130
variance
z
_
131
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
132
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
133
stock <- rnorm(100, mean = 0.12, sd = 0.2)
134
# 3.6 What is the probability of a negative stock return?
135
# Answer this question ...
136
# (a) by using the variable "stock" from (3.5)
137
prob
_
neg_
emp <- mean(stock<0)
138
print(prob
_
neg_
emp)
139
# (b) by calculating the (theoretical) probability for a normal
distribution …
140prob
_
neg_
theor <- pnorm(0,mean = 0.12, sd = 0.2)
141
print(prob
_
neg_
theor)
142
143
144
145
146
147
148
################################################
# 4: Functions and Optimization (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R
f <- function(x){
x^2
149
}
150
# 4.2 Calculate the value of f for x=1
151
f(1)
152
# 4.3 Create a plot of the function for the interval [-2, 2]
153
# If in doubt, type "?plot" to get the help file for the function
154
x <- seq(-2, 2, length.out = 200)
155
y <- f(x)
156
plot(x, y, type = "l"
, lwd = 2, main = "Plot of f(x) = x^2"
,xlab = "x"
,
ylab = "f(x)") …
157
# 4.4 Numerically, by using R, find the location of the minimum using the
…
optim
158
# function. Store the result of your minimization (the location of
the minimum) …
159
# in a variable called xmin
160
opt <- optim(0,f,method = "BFGS")
161
x
_
min = opt$par
162
y_
min = opt$value
163
xmin <- list("min x" = x
_
min,
"min y" = y_
min)
164
print(xmin)
165
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
166
# yourself. Choose N=100 grid points. Search in an interval between
…
-2 and 2.
167
# Store the result of your minimization (the location of the minimum)
in a …
168
# variable called xmin
_grid
169
N <- 100
170
grid <- seq(-2, 2, length.out = N)
171
values <- f(grid)
172
173
174
x
min
_
_grid <- grid[which.min(values)]
y_
min
_grid <- min(values)
175
176
177
xmin
_grid <- list("min x" = x
min
_
_grid,
print(xmin
_grid)
"min y" = y_
min
_grid)
178
179
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
180
# are not identical. Why?
181
182
# The results are not identical because optim searches in a continuous
space, …
183
# while the grid search is limited to a finite set of discrete points.
184
185
186
####################################################
187
# 5: Functions and algorithms (25 points) #
188
####################################################
189
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
190
# like this
191
# a) process individual digits from right to left
192
# b) leave digits number 1,3,5 etc (counted from right) unchanged
193
# c) multiply digits 2,3,6 etc (counted from right) by 2
194
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
195
# e) calculate the sum of all (processed) digits
196
# IF the result can be divided by 10, the number is a valid credit
card number …
197
#
198
# Example: 63487
199
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
200
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
201
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
202
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
203
# For instance, 7 %% 4 gives 3
204
205
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
206
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
207
208
…
209
210
…
211
212
# The follwing line takes a *valid* credit card number and creates a
vector with single digits.
# You can use this to test your function
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from
# right to left.
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
213
214
215
checkLuhn <- function(digits) {
rev
_
digits <- rev(digits)
216
217
218
219
220
221
for (i in seq_
along(rev
_
digits)) {
if (i %% 2 == 0) {
rev
_
digits[i] <- rev
_
digits[i] * 2
if (rev
_
digits[i] > 9) {
rev
_
digits[i] <- rev
_
digits[i] - 9
222
}
223
}
224
}
225
226
sum(rev
_
digits) %% 10 == 0
227
}
228
229
230
231
#test
checkLuhn(10)
checkLuhn(36)
232
233
234
235
236
237
