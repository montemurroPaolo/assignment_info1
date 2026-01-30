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
32
##### <Leonardo Zanga>
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
v1<-seq(10,1,
-1)
38
v1
39
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
…
not use the c() command.
40
v2<-3*seq(1:10)
41
v2
42
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
43
M<-rbind(seq(1,291,10),seq(2,292,10),seq(3,293,10),seq(4,294,10),seq(10,
300,10)) …
44
M
45
# 1.4 Print the first row of M
46M[1,]
47
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
48
# regardless of the dimension of v1.
49
M[length(M)]
50
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
51
(12/(19-7))^1/5
52
(log(1)+log(2))/((pi+1)/(pi+2))
53
log(sin(2)/exp(2))
54
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
55
u<-10^(-5)
56
# 1.8 If you would now run the line
57
# print(U)
58
# you would get an error message. Which important concept of R is the
…
reason
59
# for this error? Answer in 1 sentence as a comment.
60
#### Because U and u are different values in R
61
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
75
# 2.1 How many countries are there in the dataset?
nrow(Eudata)
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
# 2.2 Calculate the total population of the EU
sum(Eudata$Population[Eudata$Eurozone==1])
# 2.3 Print the population of the smallest and largest EU country by Area
Eudata$Population[which.max(Eudata$Area)]
Eudata$Population[which.min(Eudata$Area)]
# 2.4 Calculate the number of countries that are members of the Eurozone
Sum(Eudata$Eurozone==TRUE)
# 2.5 Calculate the total GDP of all Eurozone members
sum(Eudata$GDP[Eudata$Eurozone])
86
87
# 2.6 Calculate the GDP per capita in euros
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
88
EU …
89
sum(Eudata$GDP/Eudata$Population)
90
sum(Eudata$GDP[Eudata$Eurozone==TRUE]/Eudata$Population[Eudata$Eurozone==
TRUE]) …
91
sum(Eudata$GDP[Eudata$Eurozone==FALSE]/Eudata$Population[Eudata$Eurozone=
=FALSE]) …
92
# 2.7 When was the EU founded?
93
# Hint: this must be the earliest year in which any country became a
member …
94
min(Eudata$Accesion)
95
96
97
98
99
100
101
# 2.8 Calculate the number of EU founding members
sum(Eudata$CountyName[Eudata$Accesion==1953])
# 2.9 Only now you discover that the data set still contains the UK.
# Permanently remove the UK from the dataframe "Eudata"
Eudata<-Eudata[Eudata$countyname=='United Kingdom'
,]
Eudata
102
103
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
…
104
105
106
January 2026.
# Permanently update the dataframe "Eudata" accordingly.
new<-bulgaria
Eudata$New
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
################################################
# 3: Simulation and probability (15 points) #
################################################
# 3.1 Use R to produce one roll of a dice.
R<-sample(1:6,1,replace=TRUE)
R
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
k<-sample(1:6,100,replace=TRUE)
k
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
# a "4" or "5" from a dice
k[k>=4 & k<=5]
length(k[k>=4 & k<=5])/length(k)
122
123
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
124
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
125
# and variance of the random variable z = 2k-m
126
m<-sample(1:6,1000,replace=TRUE)
127
m
128
z=2*k-m
129
mean(z)
130
131
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
132
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
133
stocks<-rnorm(100,0.12,0.2)
134
stocks
135
# 3.6 What is the probability of a negative stock return?
136
# Answer this question ...
137
# (a) by using the variable "stock" from (3.5)
138prob<-mean(stocks<0)
139
prob
140
# (b) by calculating the (theoretical) probability for a normal
distribution …
141
pnorm(0,0.12,0.2)
142
143
144
145
146
147
148
149
################################################
# 4: Functions and Optimization (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R
f<-function(x){
ris<-x^2
print(ris)
150
151
# 4.2 Calculate the value of f for x=1
152
}
f(1)
153
154
# 4.3 Create a plot of the function for the interval [-2, 2]
155
# If in doubt, type "?plot" to get the help file for the function
156
plot(f,2,
-2)
157
plot()
158
# 4.4 Numerically, by using R, find the location of the minimum using the
optim …
159
# function. Store the result of your minimization (the location of
the minimum) …
160
# in a variable called xmin
161
xmin<-optim( par=0, fn=f, method="BFGS")
162
xmin
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
lowerbound=-2
168
upperbound=+2
169
xmin
_grid<-optim( par=100, fn=f, method="BFGS"
,lower=lowerbound,
upper=upperbound) …
170
xmin
171
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
172
# are not identical. Why?
173
because i have add upper and lower bound
174
175
176
y####################################################
177
# 5: Functions and algorithms (25 points) #
178
####################################################
179
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
180
# like this
181# a) process individual digits from right to left
182
183
# b) leave digits number 1,3,5 etc (counted from right) unchanged
# c) multiply digits 2,3,6 etc (counted from right) by 2
# d) if a digit (after multiplying by 2) is larger than 9, subtract
184
9 …
185
# e) calculate the sum of all (processed) digits
186
# IF the result can be divided by 10, the number is a valid credit
card number …
187
#
188
# Example: 63487
189
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
190
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
191
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
192
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
193
# For instance, 7 %% 4 gives 3
194
195
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
196
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
197
s=0
198
v1<-c(6,3,4,8,7)
199
n<-v1()
200
201
202
203
204
205
chwcluLuhn<-function(v1){
if(n*2>9){}
ris< n+((n+1)*2-9)+4+3*2+6/10
valid<-(ris/10)==TRUE
s=s+s1
206
}
207
else{
208
209
210
…
211
212
…
213
214
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
215
216
217
Saved: 13.01.26, 15:24:34 Page 1/5
Printed for: Peter Gruber
