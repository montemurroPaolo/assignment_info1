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
# <your name>
#<Nicholas Serantoni>
################################################
# 1: R basics (13 points) #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
not use the c() command.
v1<- (10:1)
v1
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
not use the c() command.
v2<-seq(3,30,by=3)
v2
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
row1<- seq(1,291, by=10)
row2<-seq(2,292,by=10)
row3<- seq(3,293,by=10)
row4<-seq(4,294, by=10)
row5<- seq(10,300, by=10)
48
M<-rbind(row1,row2,row3,row4, row5)
49
M
50
# 1.4 Print the first row of M
51
M["row1"
,]
52
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
53
# regardless of the dimension of v1.
54
v1<-(10:1)
55
v1
56
tail(v1,1)
57
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
58
(12/(19-7))^(1/5)
59
(log10(1)+log10(2))/((pi+1)/(pi-1))
60
log10(sin(2)/exp(2))
61
gx<- function(x){
62
g<-3*X^2-x/2+2
63
g
64
}
65
gx
66
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
67
u<-10^5
68
# 1.8 If you would now run the line
69
# print(U)
70
# you would get an error message. Which important concept of R is the
…
reason
71
# for this error? Answer in 1 sentence as a comment.
72
#1.8"u"and "U" are seen as two different variables.we should use the same
lower case name for variables …
73
74
################################################
75
# 2: Data and Logical conditions (20 points) #
76
################################################
77
# The file "Eudata.csv" contains data about the (still 28) EU countries.
78
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
79
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
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
# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
Eudata<- read.csv("~/Desktop/Inf2mock2024 (2)/Eudata.csv")
# 2.1 How many countries are there in the dataset?
nrow(Eudata)
# 2.2 Calculate the total population of the EU
sum(Eudata$Population)
# 2.3 Print the population of the smallest and largest EU country by Area
min(Eudata$Area)
max(Eudata$Area)
# 2.4 Calculate the number of countries that are members of the Eurozone
sum(Eudata$Eurozone)
# 2.5 Calculate the total GDP of all Eurozone members
95
sum(Eudata$GDP[myData$Eurozone])
96
# 2.6 Calculate the GDP per capita in euros
97
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
98
percepita<-Eudata$GDP/Eudata$Population
99
#a)
100
sum(percepita)
101
#b)
102
sum(percepita(Eudata$Eurozone))
103
# 2.7 When was the EU founded?
104
# Hint: this must be the earliest year in which any country became a
member …
105
EUfoundation<-min(Eudata$Accession)
106
EUfoundation
107
# 2.8 Calculate the number of EU founding members
108
EUfoundation<-sum(Eudata)
109
# 2.9 Only now you discover that the data set still contains the UK.
110
# Permanently remove the UK from the dataframe "Eudata"
111
Eudata=Eudata[-28]
112
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
…
January 2026.
113
# Permanently update the dataframe "Eudata" accordingly.
114
115
116
117
################################################
118
# 3: Simulation and probability (15 points) #
119
################################################
120
# 3.1 Use R to produce one roll of a dice.
121
sample(1:6,1, replace=T)
122
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
123
k<-sample(1:6,10000,replace =T)
124
k
125
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
126
# a "4" or "5" from a dice
127
mean(k==4 | k==5)
128
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
129
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
130
# and variance of the random variable z = 2k-m
131
m=sample(1:6,10000,TRUE)
132
z=2*k-m
133
mean(z)
134
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
135
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
136
stock<- rnorm(100,mean=0.12,sd=0.2)
137
# 3.6 What is the probability of a negative stock return?
138
# Answer this question ...
139
# (a) by using the variable "stock" from (3.5)
140empirical
_probability<-sum(stock<0)/length(stock)
141
# (b) by calculating the (theoretical) probability for a normal
…
142
distribution
theoretical
_probability<-pnorm(0,mean=0.12,sd=0.2)
143
144
145
146
147
148
149
150
################################################
# 4: Functions and Optimization (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R
fx<- function(x){
fx1<- -x^2+1
print(fx1)
151
}
152
fx
153
# 4.2 Calculate the value of f for x=1
154
fx(x=1)
155
# 4.3 Create a plot of the function for the interval [-2, 2]
156
# If in doubt, type "?plot" to get the help file for the function
157
plot(fx,
-2,2)
158
# 4.4 Numerically, by using R, find the location of the minimum using the
…
optim
159
# function. Store the result of your minimization (the location of
the minimum) …
160
# in a variable called xmin
161
xmin<-optimize(fx, interval=c(-2,2))$minimum
162
print(xmin)
163
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
164
# yourself. Choose N=100 grid points. Search in an interval between
…
-2 and 2.
165
# Store the result of your minimization (the location of the minimum)
in a …
166
# variable called xmin
_grid
167
168
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
# are not identical. Why?
169
170
171
172
y####################################################
173
# 5: Functions and algorithms (25 points) #
174
####################################################
175
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
176
# like this
177
# a) process individual digits from right to left
178
# b) leave digits number 1,3,5 etc (counted from right) unchanged
179
# c) multiply digits 2,3,6 etc (counted from right) by 2
180
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
181
# e) calculate the sum of all (processed) digits
182
# IF the result can be divided by 10, the number is a valid credit
card number …
183
#
184
# Example: 63487
185
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
186
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
187
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
188
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
189
# For instance, 7 %% 4 gives 3
190
191
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
192
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
193
checkLuhn<- function
194
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
195
# You can use this to test your function
196
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
197
# right to left.
198
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
199
200
201
