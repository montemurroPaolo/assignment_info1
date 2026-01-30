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
# <Malak El fatih>
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
v1 = seq(10,0,
-1)
38
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
…
not use the c() command.
39
v2 = 3 *(1:10)
40
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
41
M <- matrix(seq(1, 300, by = 1), nrow = 5, byrow = TRUE)
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
46
Saved: 13.01.26, 15:34:48 Page 2/6
Printed for: Peter Gruber
47
48
49
50
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
res <- c((12/(19-7))^(1/5),
(log(1) + log(2)) / ((pi + 1)/(pi - 1 )),
log(sin(2)/exp(2))
51
)
52
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
53
54
# 1.8 If you would now run the line
55
# print(U)
56
# you would get an error message. Which important concept of R is the
reason …
57
# for this error? Answer in 1 sentence as a comment.
58
59
60
################################################
61
# 2: Data and Logical conditions (20 points) #
62
################################################
63
# The file "Eudata.csv" contains data about the (still 28) EU countries.
64
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
65
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
66
67
68
69
# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
70
71
72
# 2.1 How many countries are there in the dataset?
nrow(Eudata)
73
74
75
# 2.2 Calculate the total population of the EU
sum(Eudata$Population)
76
77
# 2.3 Print the population of the smallest and largest EU country by Area
78
79
pop_
smallest <- Eudata$Population[which.min(Eudata$Area)]
80
81
pop_
largest <- Eudata$Population[which.max(Eudata$Area)]
82
83
84
pop_
smallest
pop_
largest
85
86
87
# 2.4 Calculate the number of countries that are members of the Eurozone
sum(Eudata$IsEurozone == 1)
88
89
90
# 2.5 Calculate the total GDP of all Eurozone members
sum(Eudata$GDP[Eudata$IsEurozone == 1])
91
92
93
# 2.6 Calculate the GDP per capita in euros
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
94# (a)
Saved: 13.01.26, 15:34:48 Page 3/6
Printed for: Peter Gruber
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
…
111
112
113
114
115
116
117
…
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
gdp_pc
_
eu <- sum(Eudata$GDP) * 1e6 / sum(Eudata$Population)
# (b)
gdp_pc
_
euro <- sum(Eudata$GDP[Eudata$IsEurozone == 1]) * 1e6 /
sum(Eudata$Population[Eudata$IsEurozone == 1])
# (c)
gdp_pc
_
noneuro <- sum(Eudata$GDP[Eudata$IsEurozone == 0]) * 1e6 /
sum(Eudata$Population[Eudata$IsEurozone == 0])
gdp_pc
gdp_pc
gdp_pc
eu
_
euro
_
noneuro
_
# 2.7 When was the EU founded?
# Hint: this must be the earliest year in which any country became a
member
# 2.8 Calculate the number of EU founding members
# 2.9 Only now you discover that the data set still contains the UK.
# Permanently remove the UK from the dataframe "Eudata"
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
January 2026.
# Permanently update the dataframe "Eudata" accordingly.
################################################
# 3: Simulation and probability (15 points) #
################################################
# 3.1 Use R to produce one roll of a dice.
sample(1:6, 1)
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
k <- sample(1:6, 1000, replace = TRUE)
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
# a "4" or "5" from a dice
mean(k == 4 | k == 5)
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
136
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
137
# and variance of the random variable z = 2k-m
138
m <- sample(1:6, 1000, replace = TRUE)
139
140
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
141
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
Saved: 13.01.26, 15:34:48 Page 4/6
Printed for: Peter Gruber
142
stock <- rnorm(100, mean = 0.12, sd = 0.2)
143
144
# 3.6 What is the probability of a negative stock return?
145
# Answer this question ...
146
# (a) by using the variable "stock" from (3.5)
147
# (b) by calculating the (theoretical) probability for a normal
distribution …
148
mean(stock < 0)
149
pnorm(0, mean = 0.12, sd = 0.2)
150
151
152
153
154
155
156
157
################################################
# 4: Functions and Optimization (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R
f <- function(x) {
x^2
158
}
159
160
# 4.2 Calculate the value of f for x=1
161
162
f(1)
# [1] 1
163
164
165
# 4.3 Create a plot of the function for the interval [-2, 2]
166
# If in doubt, type "?plot" to get the help file for the function
167
x <- seq(-2, 2, length.out = 400)
168
plot(x, f(x), type = "l"
, xlab = "x"
, ylab = "f(x)"
, main = "f(x) = x^2
on [-2, 2]") …
169
170
171
# 4.4 Numerically, by using R, find the location of the minimum using the
optim …
172
# function. Store the result of your minimization (the location of
the minimum) …
173
# in a variable called xmin
174
xmin <- optimize(g, interval = c(-10,10))$minimum
175
176
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
177
…
-2 and 2.
178
in a …
179
# variable called xmin
_grid
180
N <- 100
181
grid <- seq(-2, 2, length.out = N)
182
vals <- f(grid)
# yourself. Choose N=100 grid points. Search in an interval between
# Store the result of your minimization (the location of the minimum)
183
184
185
xmin
_grid <- grid[which.min(vals)]
xmin
_grid
186
Saved: 13.01.26, 15:34:48 Page 5/6
Printed for: Peter Gruber
187
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
188
# are not identical. Why?
189
190
191
192
193
y####################################################
194
# 5: Functions and algorithms (25 points) #
195
####################################################
196
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
197
# like this
198
# a) process individual digits from right to left
199
rev
_
digits <- rev(digits)
200
# b) leave digits number 1,3,5 etc (counted from right) unchanged
201
# c) multiply digits 2,3,6 etc (counted from right) by 2
202
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
203
# e) calculate the sum of all (processed) digits
204
# IF the result can be divided by 10, the number is a valid credit
card number …
205
#
206
# Example: 63487
207
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
208
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
209
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
210
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
211
# For instance, 7 %% 4 gives 3
212
213
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
214
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
215
216
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
217
# You can use this to test your function
218
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
219
# right to left.
220
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
221
222
223
224
checkLuhn <- function(digits) {
digits <- as.integer(digits)
if (any(is.na(digits)) || any(digits < 0 | digits > 9)) return(FALSE)
225
226
a) process individual digits from right to left
Saved: 13.01.26, 15:34:48 Page 6/6
Printed for: Peter Gruber
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
rev
_
digits <- rev(digits)
#leave digts number 1,3,5 ecc.. (counted from right) unchanged
pos <- seq_
along(rev
_
digits)
# multiply digits 2,3,6 ecc.. (counted from rigt) by 2
to
_
double <- (pos %% 2 == 0)
rev
_
digits[to
double] <- rev
_
_
digits[to
double] * 2
_
#if a digit (after multiplying by 2) is larger than 9, subtract 9
rev
_
digits[rev
_
digits > 9] <- rev
_
digits[rev
_
digits > 9] - 9
# calculate the sum of all (processed) digits
sum(rev
_
digits) %% 10 == 0
