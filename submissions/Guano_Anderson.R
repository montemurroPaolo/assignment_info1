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
# <Guano Anderson >
################################################
# 1: R basics (13 points) #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
not use the c() command.
v1<-seq(10,1,
-1)
v1
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
not use the c() command.
v2<-seq(3,30,3)
v2
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
v3<-seq(1,291,10)
v4<-seq(2,292,10)
v5<-seq(3,293,10)
v6<-seq(4,294,10)
48
v7<-seq(10,300,10)
49
50
M<-rbind(v3,v4,v5,v6,v7)
51
M
52
# 1.4 Print the first row of M
53
M[1,]
54
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
55
# regardless of the dimension of v1.
56
tail(v1,1)
57
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
58
(12/(19-7))^(1/5)
59
60
(log10(1)+log10(2))/((pi-1)/(pi-1))
61
62
log10(sin(2)/exp(2))
63
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
64
u<-10^5
65
# 1.8 If you would now run the line
66
print(U)
67
# you would get an error message. Which important concept of R is the
reason …
68
# for this error? Answer in 1 sentence as a comment.
69
70
## R is case sensitive,which means that u and V are two different
variables …
71
72
################################################
73
# 2: Data and Logical conditions (20 points) #
74
################################################
75
# The file "Eudata.csv" contains data about the (still 28) EU countries.
76
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
77
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
78
79
80
81
# The following line loads the data into an R dataframe
# Hunt: Use Session/Set Working Directory/To Source File Location
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
82
83
84
85
head(Eudata)
# 2.1 How many countries are there in the dataset?
nrow(Eudata)
86
87
88
89
90
# 2.2 Calculate the total population of the EU
sum(Eudata$Population)
# 2.3 Print the population of the smallest and largest EU country by Area
Eudata$Population[which.min(Eudata$Area)]# smallest
91
92
Eudata$Population[which.max(Eudata$Area)]#Largest
93
94
# 2.4 Calculate the number of countries that are members of the Eurozone
95
96
sum(Eudata$Eurozone==1)
# 2.5 Calculate the total GDP of all Eurozone members
97
98
sum(Eudata$GDP[Eudata$Eurozone==1])
99
100
# 2.6 Calculate the GDP per capita in euros
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
101
EU …
102
103
104
105
106
#a
gdp_pc
gdp_pc
#b
_
Eu<-sum((Eudata$GDP)*1e6)/sum(Eudata$Population)
Eu
_
107
108
gdp_pc
_
EZ<-(sum(Eudata$GDP[Eudata$Eurozone==1])*1e6)/sum(Eudata$
Population[Eudata$Eurozone==1]) …
109
gdp_pc
EZ
_
110
#c
111
gdp_pc
no
Eu
_
_
_
memb<-(sum(Eudata$GDP[Eudata$Eurozone==0])*1e6)/sum(Eudata$
Population[Eudata$Eurozone==0]) …
112
gdp_pc
no
Eu
memb
_
_
_
113
# 2.7 When was the EU founded?
114
# Hint: this must be the earliest year in which any country became a
…
member
115
min(Eudata$Accession)
116
# 2.8 Calculate the number of EU founding members
117
sum(Eudata$Accession==1953)
118
# 2.9 Only now you discover that the data set still contains the UK.
119
# Permanently remove the UK from the dataframe "Eudata"
120
Eudata<-subset(Eudata,Code != "GB")
121
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
…
January 2026.
122
# Permanently update the dataframe "Eudata" accordingly.
123
124
125
126
################################################
127
# 3: Simulation and probability (15 points) #
128
################################################
129
# 3.1 Use R to produce one roll of a dice.
130
One
roll
_
_
dice<-sample(1:6,1,T)
131
One
roll
dice
_
_
132
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
133
k<-sample(1:6,1000,T)
134
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
135
# a "4" or "5" from a dice
136
mean(k==4 | k==5)
137
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
138
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
139
# and variance of the random variable z = 2k-m
140m<-sample(1:6,1000,T)
141
z<-2*k-m
142
z
143
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
144
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
145
stock<-rnorm(100,0.12,0.2)
146
stock
147
# 3.6 What is the probability of a negative stock return?
148
# Answer this question ...
149
# (a) by using the variable "stock" from (3.5)
150
mean(stock<0)
151
152
# (b) by calculating the (theoretical) probability for a normal
distribution …
153
pnorm(0,mean = 0.12,sd=0.2)
154
155
156
157
158
################################################
# 4: Functions and Optimization (25 points)#
################################################
# 4.1 Create the function f(x)=x^2 in R
159
160
161
f<-function(x){
x^2
162
163
164
165
166
167
}
# 4.2 Calculate the value of f for x=1
f(1)
# 4.3 Create a plot of the function for the interval [-2, 2]
# If in doubt, type "?plot" to get the help file for the function
curve(f,from = -2,to=2)
168
169
# 4.4 Numerically, by using R, find the location of the minimum using the
optim …
170
# function. Store the result of your minimization (the location of
the minimum) …
171
# in a variable called xmin
172
res<-optim(par=0,fn=f,method = "BFGS")
173
ximin<-res$par
174
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
175
# yourself. Choose N=100 grid points. Search in an interval between
…
-2 and 2.
176
# Store the result of your minimization (the location of the minimum)
in a …
177
# variable called xmin
_grid
178
179
grid
_
search<-optim(par = 0, fn= f, gr = 100, method = "L-BFGS-B"
, lower =
-2, upper = 2) …
180
xmin
_grid<-
181
optim()
182
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
183
# are not identical. Why?
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
…
card number
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
# The follwing line takes a *valid* credit card number and creates a
…
vector with single digits.
208
# You can use this to test your function
209
# Hint: digits contains the numbers from LEFT to RIGHT, while the Luhn
algorithm works from …
210
# right to left.
211
digits <- as.numeric(unlist(strsplit("5019717010103742"
,
"")))
212
213
214
215
216
217
218
219
220
221
222
checkLuhn<-function(v1){
v1<-c(6,3,4,8,7)
value<-length(v1)
index<-1
somma<-0
while (value>=1) {
if(index%%2==0){
v1[value]<-v1[value]*2
if(v1[value]>9){
v1[value]<-v1[value]-9
223
}
224
225
226
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
}
somma<-somma+v1[value]
value<-value-1
index<-index+1
}
if(somma%%10==0){
return(TRUE)
}else{
return(FALSE)
}
}
checkLuhn(digits)
