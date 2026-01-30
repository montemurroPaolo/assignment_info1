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
…
39
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
# Dell Erba Lisa
################################################
# 1: R basics (13 points) #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
not use the c() command.
v1<-10:1
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
not use the c() command.
v2<-seq(3,30,by=3)
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
row1<-seq(1,291,by=10)
row2<-seq(2,292,by=10)
row3<-seq(3,293,by=10)
row4<-seq(4,292,by=10)
row5<-seq(10,300,by=10)
M<-rbind(row1,row2,row3,row4,row5)
# 1.4 Print the first row of M
Saved: 13.01.26, 15:24:34 Page 2/5
Printed for: Peter Gruber
48
49
M[1,]
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
50
# regardless of the dimension of v1.
51
52
53
tail(v1,1)
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
(12/(19-7))^(1/5)
54
(log10(1)+log10(2))/((pi+1)/(pi-1))
log10(sin(2)/exp(2))
55
56
57
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
58
u<-10^(-5)
59
# 1.8 If you would now run the line
60
# print(U)
61
# you would get an error message. Which important concept of R is the
reason …
62
# for this error? Answer in 1 sentence as a comment.
63
#R is a case sensitive, our variable is called u and not U, which is
…
undefined.
64
65
################################################
66
# 2: Data and Logical conditions (20 points) #
67
################################################
68
# The file "Eudata.csv" contains data about the (still 28) EU countries.
69
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
70
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
71
72
# The following line loads the data into an R dataframe
73
# Hunt: Use Session/Set Working Directory/To Source File Location
74
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
75
76
# 2.1 How many countries are there in the dataset?
nrow(Eudata)
77
# 2.2 Calculate the total population of the EU
78
tot
_pop<-sum(Eudata$Population)
79
# 2.3 Print the population of the smallest and largest EU country by Area
80
min(Eudata$Population)
81
max(Eudata$Population)
82
# 2.4 Calculate the number of countries that are members of the Eurozone
83
sum(Eudata$Eurozone==1)
84
# 2.5 Calculate the total GDP of all Eurozone members
85
gdp_
eurozone<-sum(Eudata$GDP[Eudata$Eurozone==1])
86
# 2.6 Calculate the GDP per capita in euros
87
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
88
gdp_
tot<-sum(Eudata$GDP)
89
gdp_per
_
capita
_
eu<-gdp_
tot/tot
_pop
90
pop_
eurozone<-sum(Eudata$Population[Eudata$Eurozone==1])
91
gdp_per
_
capita
_
eurozone<-gdp_
eurozone/pop_
eurozone
92
gdp_
non
_
eurozone<-sum(Eudata$GDP[Eudata$Eurozone==0])
93pop_
non
_
eurozone<-sum(Eudata$Population[Eudata$Eurozone==0])
Saved: 13.01.26, 15:24:34 Page 3/5
Printed for: Peter Gruber
94
gdp_per
_
capita
non
_
_
eurozone<-gdp_
non
_
eurozone/pop_
non
eurozone
_
95
# 2.7 When was the EU founded?
96
# Hint: this must be the earliest year in which any country became a
member …
97
min(Eudata$Accession)
98
# 2.8 Calculate the number of EU founding members
99
founding_
memebers<-sum(Eudata$Accession==1953)
100
# 2.9 Only now you discover that the data set still contains the UK.
101
# Permanently remove the UK from the dataframe "Eudata"
102
Eudata<-Eudata[Eudata$CountyName!="United Kingdom"
, ]
103
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
…
January 2026.
104
# Permanently update the dataframe "Eudata" accordingly.
105
Eudata<-Eudata[Eudata$CountyName=="Bulgaria"
, ]
106
107
108
################################################
109
# 3: Simulation and probability (15 points) #
110
################################################
111
# 3.1 Use R to produce one roll of a dice.
112
dice<-sample(1:6,1,replace=TRUE)
113
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
114
k<-sample(1:6,1000,replace=TRUE)
115
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
116
# a "4" or "5" from a dice
117
mean(k==4 | k==5)
118
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
119
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
120
# and variance of the random variable z = 2k-m
121
m<-sample(1:6,1000,replace=TRUE)
122
z<-2*k-m
123
expected
value
_
_
124
print(expected
z<-mean(z)
value
z)
_
_
125
var(z)
126
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
127
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
128
stock<-rnorm(100,0.12,0.2)
129
# 3.6 What is the probability of a negative stock return?
130
# Answer this question ...
131
# (a) by using the variable "stock" from (3.5)
132
# (b) by calculating the (theoretical) probability for a normal
distribution …
133
134
135
136
137
138
139
#a
mean(stock<0)
#b
stock<-pnorm(0,0.12,0.2)
################################################
# 4: Functions and Optimization (25 points)#
Saved: 13.01.26, 15:24:34 Page 4/5
Printed for: Peter Gruber
140
141
142
143
144
################################################
# 4.1 Create the function f(x)=x^2 in R
f<-function(x){
x<-x^2
return(x)
145
}
146
# 4.2 Calculate the value of f for x=1
147
f(1)
148
# 4.3 Create a plot of the function for the interval [-2, 2]
149
# If in doubt, type "?plot" to get the help file for the function
150
curve(f,
-2,2)
151
# 4.4 Numerically, by using R, find the location of the minimum using the
…
optim
152
# function. Store the result of your minimization (the location of
the minimum) …
153
# in a variable called xmin
154
xmin<-optim(par=0,fn=f,lower=-2,upper=2,method='L-BFGS')
155
# 4.5 Now try to find the location of the minimum by implementing a grid
…
search
156
# yourself. Choose N=100 grid points. Search in an interval between
…
-2 and 2.
157
# Store the result of your minimization (the location of the minimum)
in a …
158
# variable called xmin
_grid
159
xmin<-optim(par=100,fn=f,method='Brent'
, lower=-2,upper=2)
160
161
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
162
# are not identical. Why?
163
# Because of the floating-point approximation
164
#The two ways to find the location of the minimum are close to each other
but they aren't exactly the same …
165
y####################################################
166
# 5: Functions and algorithms (25 points) #
167
####################################################
168
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
169
# like this
170
# a) process individual digits from right to left
171
# b) leave digits number 1,3,5 etc (counted from right) unchanged
172
# c) multiply digits 2,3,6 etc (counted from right) by 2
173
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
174
# e) calculate the sum of all (processed) digits
175
# IF the result can be divided by 10, the number is a valid credit
card number …
176
#
177
# Example: 63487
178
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
179
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
Saved: 13.01.26, 15:24:34 Page 5/5
Printed for: Peter Gruber
180
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
181
…
x/y.
# Hint: The operation x %% y yields the remainder of the division
182
# For instance, 7 %% 4 gives 3
183
184
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
185
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
186
187
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
188
# You can use this to test your function
189
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
190
# right to left.
191
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
192
193
194
195
196
197
198
199
200
checkLuhn<-function(CardNumber){
digits<-as.numeric(unlist(strsplit(CardNumber,
digits
_
rev<-rev(digits)
for(i in seq_
along(digits
rev)){
_
if( i %% 2==0){
digits
_
rev[i]<-digits-rev[i]*2
if(digits
rev[i]>9){
_
digits
_
rev[i]<-digits
rev[i]-9
_
"")))
201
}
202
}
203
204
205
206
total<-sum(digits
rev)
_
return(total%%10==0)
207
}
}
208
209
checkLuhn("5019717010103742")
210
