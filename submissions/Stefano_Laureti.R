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
33
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
# 0: Your name (2 points)
name<-StefanoLaureti
################################################
# 0.1 Write your name below as a comment
# <your name>
# <Stefano Laureti>
34
################################################
35
# 1: R basics (13 points) #
36
################################################
37
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
…
not use the c() command.
38
v1<-seq(10,1,
-1)
39
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
…
not use the c() command.
40
v2<-seq(3,30, 3)
41
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
42
M <- matrix(seq(1, 300, 2), nrow=5, byrow=FALSE)
43
# 1.4 Print the first row of M
44
M[1, ]
45
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
46# regardless of the dimension of v1.
Saved: 13.01.26, 15:29:50 Page 2/6
Printed for: Peter Gruber
47
tail(v1, 1)
48
49
50
51
52
53
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
calc
1
7 <- c(
_
_
(12/(19-7))^(1/5),
(log10(1) + log10(2)) / ((pi + 1)/(pi - 1)),
log10(sin(2) / exp(2))
54
)
55
calc
1
7
_
_
56
57
58
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
59
u<-c(10^
-5)
60
u
61
62
63
64
…
65
66
…
# 1.8 If you would now run the line
# print(U)
# you would get an error message. Which important concept of R is the
reason
# for this error? Answer in 1 sentence as a comment.
# R is case-sensitive: U and u are different objects; also Print() is not
print().
67
68
69
################################################
70
# 2: Data and Logical conditions (20 points) #
71
################################################
72
# The file "Eudata.csv" contains data about the (still 28) EU countries.
73
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
74
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
75
76
77
78
# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
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
# 2.1 How many countries are there in the dataset?
nrow(Eudata)
# 2.2 Calculate the total population of the EU
sum(Eudata$Population, na.rm=TRUE)
# 2.3 Print the population of the smallest and largest EU country by Area
pop_
smallest <- Eudata$Population[which.min(Eudata$Area)]
pop_
largest <- Eudata$Population[which.max(Eudata$Area)]
pop_
smallest
pop_
largest
89
90
91
92
93
94
# 2.4 Calculate the number of countries that are members of the Eurozone
sum(Eudata$IsEurozone == 1, na.rm = TRUE)
# 2.5 Calculate the total GDP of all Eurozone members
sum(Eudata$GDP[Eudata$IsEurozone == 1], na.rm = TRUE)
# 2.6 Calculate the GDP per capita in euros
Saved: 13.01.26, 15:29:50 Page 3/6
Printed for: Peter Gruber
95
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
96
gdp_pc
_
all <- (sum(Eudata$GDP, na.rm = TRUE) * 1e6) /
sum(Eudata$Population, na.rm = TRUE) …
97
98
gdp_pc
_
ez <- (sum(Eudata$GDP[Eudata$IsEurozone == 1], na.rm = TRUE) *
1e6) / …
99
sum(Eudata$Population[Eudata$IsEurozone == 1], na.rm = TRUE)
100
101
gdp_pc
_
nonez <- (sum(Eudata$GDP[Eudata$IsEurozone == 0], na.rm = TRUE) *
1e6) / …
102
sum(Eudata$Population[Eudata$IsEurozone == 0], na.rm = TRUE)
103
104
105
106
107
108
…
109
110
111
112
113
114
115
116
…
117
gdp_pc
all
_
gdp_pc
ez
_
gdp_pc
nonez
_
# 2.7 When was the EU founded?
# Hint: this must be the earliest year in which any country became a
member
min(Eudata$Accession, na.rm = TRUE)
# 2.8 Calculate the number of EU founding members
sum(Eudata$Accession == 1953, na.rm = TRUE)
# 2.9 Only now you discover that the data set still contains the UK.
# Permanently remove the UK from the dataframe "Eudata"
Eudata <- Eudata[Eudata$`County Name
` != "United Kingdom"
, ]
# (se il nome è diverso, controllo con: names(Eudata))
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
January 2026.
# Permanently update the dataframe "Eudata" accordingly.
118
119
120
121
################################################
122
# 3: Simulation and probability (15 points) #
123
################################################
124
# 3.1 Use R to produce one roll of a dice.
125
rolldice<-sample(1:6,1,replace=TRUE)
126
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
127
k<-seq(sample(1:6,5000,replace=TRUE))
128
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
129
# a "4" or "5" from a dice
130
prob<- sum(k%%4)
131
prob
_
4<-prob/length(k)
132
prob2<- sum(k%%5)
133
prob
_
5<-prob2/length(k)
134
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
135
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
136
# and variance of the random variable z = 2k-m
137
m<-seq(sample(1:6,1000,replace=TRUE))
138
z<-c(2*k-m)
139
z
Saved: 13.01.26, 15:29:50 Page 4/6
Printed for: Peter Gruber
140
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
141
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
142
mu<-0.12
143
sdr=sqrt(0.2)
144
stock100<-rnorm(100, mean=mu, sd=sdr)
145
sum(stock100>0)
146
# 3.6 What is the probability of a negative stock return?
147
# Answer this question ...
148
# (a) by using the variable "stock" from (3.5)
149
pnorm(0, mean=mu, sd=sdr)
150
# (b) by calculating the (theoretical) probability for a normal
…
distribution
151
mean(pnorn(0, mean=mu, sd=sdr)<0)
152
153
154
################################################
155
# 4: Functions and Optimization (25 points)#
156
################################################
157
# 4.1 Create the function f(x)=x^2 in R
158
f<-function(x) x^2
159
# 4.2 Calculate the value of f for x=1
160
f(1)
161
# 4.3 Create a plot of the function for the interval [-2, 2]
162
# If in doubt, type "?plot" to get the help file for the function
163
curve(f, from = -2, to = 2)
164
# 4.4 Numerically, by using R, find the location of the minimum using the
optim …
165
# function. Store the result of your minimization (the location of
the minimum) …
166
# in a variable called xmin
167
xmin <- optimize(f, interval = c(-2, 2))$minimum
168
xmin
169
f(xmin)
170
# 4.5 Now try to find the location of the minimum by implementing a grid
…
search
171
# yourself. Choose N=100 grid points. Search in an interval between
…
-2 and 2.
172
# Store the result of your minimization (the location of the minimum)
in a …
173
# variable called xmin
_grid
174
xmin
_grid <- optimize(f, interval = c(-2, 2), n=100)$minimum
175
xmin
_grid
176
f(xmin
_grid)
177
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
178
# are not identical. Why?
179
180
181
182
# Because x^2 -> -Inf as |x| -> Inf, so the function is unbounded below.
####################################################
# 5: Functions and algorithms (25 points) #
Saved: 13.01.26, 15:29:50 Page 5/6
Printed for: Peter Gruber
183
####################################################
184
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
185
# like this
186
# a) process individual digits from right to left
187
# b) leave digits number 1,3,5 etc (counted from right) unchanged
188
# c) multiply digits 2,3,6 etc (counted from right) by 2
189
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
190
# e) calculate the sum of all (processed) digits
191
# IF the result can be divided by 10, the number is a valid credit
card number …
192
# if (n %% 2 > 9) { n <- n-9 }
193
194
195
Luhn<-function(n) { if (x>=0 & x<9){
196
197
}
198
199
}
200
201
if (n %% 2 > 9) { n <- n-9
202
}
203
204
205
while (n != 1) {
n <- if (n %% 2 == 0) n/2 else 3*n + 1
out <- c(out, n)
206
}
207
#
208
# Example: 63487
209
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
210
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
211
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
212
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
213
# For instance, 7 %% 4 gives 3
214
215
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
216
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
217
218
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
219
# You can use this to test your function
220
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
221
# right to left.
222
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
223
Saved: 13.01.26, 15:29:50 Page 6/6
Printed for: Peter Gruber
224
225
