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
# <Matteo Gangi>
# "Matteo Gangi
################################################
# 1: R basics (13 points) #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
not use the c() command.
v1=seq(10, 1,
-1)
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
not use the c() command.
v2= seq(1, 30, 3)
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
M= rbind(seq(1, 291,10), seq(2, 292, 10), seq(3, 293, 10), seq(4,294,10),
seq(10,300, 10)) …
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
# 1.4 Print the first row of M
47
M[1,]
48
49
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
50
# regardless of the dimension of v1.
51
tail(v1, 1)
52
53
54
55
56
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
(12/(19-7)) ^ (1/5)
(log10(1) + log0(2))/ ((pi+1)/(pi-1))
log10(sin(2)/exp(2))
57
58
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
59
u= 10^(-5)
60
61
62
# 1.8 If you would now run the line
# print(U)
63
64
# you would get an error message. Which important concept of R is the
…
reason
65
# for this error? Answer in 1 sentence as a comment.
66
67
# Because R is case sensitive
68
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
78
79
# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
80
81
82
# 2.1 How many countries are there in the dataset?
nrow(Eudata)
83
84
85
# 2.2 Calculate the total population of the EU
sum(Eudata$Popolation)
86
87
88
89
90
# 2.3 Print the population of the smallest and largest EU country by Area
smallest= Eudata$Population[which.min(Eudata$Area)]
largest = Eudata$Population [which.max(Eudata$Area)]
91
92
93
# 2.4 Calculate the number of countries that are members of the Eurozone
sum(Eudata$Eurozone== TRUE)
94
95
96
# 2.5 Calculate the total GDP of all Eurozone members
sum(Eudata$GDP[Eudata$Eurozone== TRUE])
97
98
99
# 2.6 Calculate the GDP per capita in euros
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
100
101
sum(Eudata$GDP/Eudata$Population) #a
102
sum(Eudata$GDP[Eudata$Eurozone==
TRUE]/Eudata$Population[Eudata$Eurozone== TRUE]) #b …
103
sum(Eudata$GDP[Eudata$Eurozone==
FALSE]/Eudata$Population[Eudata$Eurozone== FALSE]) …
104
105
# 2.7 When was the EU founded?
106
# Hint: this must be the earliest year in which any country became a
member …
107
min(Eudata$Accession)
108
109
110
# 2.8 Calculate the number of EU founding members
sum(Eudata$Accession == 1953)
111
112
113
114
# 2.9 Only now you discover that the data set still contains the UK.
# Permanently remove the UK from the dataframe "Eudata"
Eudata= Eudata[Eudata$CountyName != "United Kingdom"]
115
116
117
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
…
118
January 2026.
# Permanently update the dataframe "Eudata" accordingly.
119
120
121
122
123
124
125
126
################################################
# 3: Simulation and probability (15 points) #
################################################
# 3.1 Use R to produce one roll of a dice.
dice= sample(1:6, 1, TRUE)
127
128
129
130
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
k=sample (1:6, 1, TRUE)
k=sample (1:6, 1, TRUE)
131
132
133
134
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
# a "4" or "5" from a dice
mean (k==4 | k==5)
135
136
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
137
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
138
# and variance of the random variable z = 2k-m
139
140
m= sample(1:6, 1000, TRUE)
141
142
z= 2*K - m
mean(z)
143
144
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
145
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
146
stock = rnorm(100, 0.12, 0.2)
147
148
149
150
151
…
152
153
# 3.6 What is the probability of a negative stock return?
# Answer this question ...
# (a) by using the variable "stock" from (3.5)
# (b) by calculating the (theoretical) probability for a normal
distribution
mean(stock<0) #a
pnorm(0, 0.12, 0.2) #b
154
155
156
157
158
159
160
################################################
# 4: Functions and Optimization (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R
f = function(x){
x^2
161
162
163
164
165
166
}
# 4.2 Calculate the value of f for x=1
f(1)
# 4.3 Create a plot of the function for the interval [-2, 2]
# If in doubt, type "?plot" to get the help file for the function
curve(f,
-2, 2)
167
168
# 4.4 Numerically, by using R, find the location of the minimum using the
optim …
169
# function. Store the result of your minimization (the location of
the minimum) …
170
# in a variable called xmin
171
neg_
f = function (x){
172
-f(x)
173
174
175
176
}
res= optim(par=0, fn =neg_
f, method = "Brent"
xmin= res$par
print(xmin)
, lower= -2, upper=2)
177
178
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
179
…
-2 and 2.
180
in a …
181
# variable called xmin
_grid
# yourself. Choose N=100 grid points. Search in an interval between
# Store the result of your minimization (the location of the minimum)
182
183
184
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
184…
185
and (4.5)
# are not identical. Why?
186
187
188
y####################################################
189
# 5: Functions and algorithms (25 points) #
190
####################################################
191
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
192
# like this
193
# a) process individual digits from right to left
194
# b) leave digits number 1,3,5 etc (counted from right) unchanged
195
# c) multiply digits 2,3,6 etc (counted from right) by 2
196
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
197
# e) calculate the sum of all (processed) digits
198
# IF the result can be divided by 10, the number is a valid credit
card number …
199
#
200
# Example: 63487
201
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
202
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
203
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
204
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
205
# For instance, 7 %% 4 gives 3
206
207
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
208
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
209
210
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
211
# You can use this to test your function
212
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
213
# right to left.
214
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
215
216
217
