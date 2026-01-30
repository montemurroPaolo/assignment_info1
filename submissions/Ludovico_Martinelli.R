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
#Martinelli Ludovico
################################################
# 1: R basics (13 points) #
################################################
# 1.1 Create a vector v1 as defined in equation 1.1 on the Info Sheet. Do
not use the c() command.
v1<- seq(10,1,
-1)
v1
# 1.2 Create a vector v2 as defined in equation 1.2 on the Info Sheet. Do
not use the c() command.
v2<-seq(3,30,3)
v2
# 1.3 Create a matrix M as defined in equation 1.3 on the Info Sheet.
riga1<- seq(1,291,10)
riga2<-seq(2,292,10)
riga3<-seq(3,293,10)
riga4<-seq(4,294,10)
riga10<-seq(10,300,10)
48
M<-matrix(c(riga1,riga2,riga3,riga4,riga10), nrow = 5, byrow = T)
49
M
50
# 1.4 Print the first row of M
51
M[1,]
52
# 1.5 Display the last element of v1. Tell R to "display the last element
of x"
, …
53
# regardless of the dimension of v1.
54
tail(v1,1)
55
# 1.6 Perform the calculations in equation 1.4 on the Info Sheet.
56
(12/(19-7))^(1/5)
57
(log10(1)+log10(2))/((pi+1)/(pi-1))
58
log10(sin(2)/exp(2))
59
# 1.7 Create a variable "u" with the value "ten to the power minus 5"
60
u<-10^12
61
# 1.8 If you would now run the line
62
# print(U)
63
# you would get an error message. Which important concept of R is the
reason …
64
# for this error? Answer in 1 sentence as a comment.
65
66
#R is case sensitive, so we have to pay attention when we write capital
…
letter.
67
68
################################################
69
# 2: Data and Logical conditions (20 points) #
70
################################################
71
# The file "Eudata.csv" contains data about the (still 28) EU countries.
72
# The columns are: County Name, Code, Capital, Accession (=Year of
membership), …
73
# Population, Area, GDP (in Million EUR), currency, IsEurozone (=1, if
member) …
74
75
# The following line loads the data into an R dataframe
76
# Hunt: Use Session/Set Working Directory/To Source File Location
77
Eudata <- read.table('Eudata.csv'
, sep=";"
,header=TRUE)
78
View(Eudata)
79
# 2.1 How many countries are there in the dataset?
80
nrow(Eudata)
81
# 2.2 Calculate the total population of the EU
82
sum(Eudata$Population)
83
# 2.3 Print the population of the smallest and largest EU country by Area
84
Eudata$Population[which.min(Eudata$Area)]
85
Eudata$Population[which.max(Eudata$Area)]
86
# 2.4 Calculate the number of countries that are members of the Eurozone
87
sum(Eudata$Eurozone==1)
88
# 2.5 Calculate the total GDP of all Eurozone members
89
sum(Eudata$GDP[Eudata$Eurozone==1])
90
# 2.6 Calculate the GDP per capita in euros
91
# (a) of the total EU, (b) of the Eurozone (c) of the non-Eurozone
EU …
92
gdp_per
_
capita<-(Eudata$GDP/Eudata$Population)
93gdp_per
_
capita
94
95
96
sum(gdp_per
_
capita[Eudata$Currency=='euro'])
sum(Eudata$GDP[Eudata$Eurozone==1]/Eudata$Population[Eudata$Eurozone==1])
sum(Eudata$GDP[Eudata$Eurozone==0]/Eudata$Population[Eudata$Eurozone==0])
97
98
# 2.7 When was the EU founded?
99
# Hint: this must be the earliest year in which any country became a
member …
100
Eudata$Accession[which.min(Eudata$Accession)]
101
102
# 2.8 Calculate the number of EU founding members
103
sum(Eudata$Accession==1953)
104
# 2.9 Only now you discover that the data set still contains the UK.
105
# Permanently remove the UK from the dataframe "Eudata"
106
Eudata<-Eudata[Eudata$CountyName != 'United Kingdom'
,]
107
# 2.10 You also discover that Bulgaria actually joined the Euro on 1st
…
January 2026.
108
# Permanently update the dataframe "Eudata" accordingly.
109
Eudata$Accession[3,4]<- 2026
110
#qui devo cercare di sostituire la casella accession nel rigo 3, mettendo
la data 2026 …
111
112
113
################################################
114
# 3: Simulation and probability (15 points) #
115
################################################
116
# 3.1 Use R to produce one roll of a dice.
117
sample(1:6,1)
118
# 3.2 Create a vector called "k" that contains 1000 rolls of a dice
119
k<-sample(1:6,1000, replace = TRUE)
120
k
121
# 3.3 Using "k" from (3.2), estimate the probability of obtaining
122
# a "4" or "5" from a dice
123
prob4<-mean(k==4)
124
prob4
125
prob5<-mean(k==5)
126
prob5
127
# 3.4 Create a vector called "m" that contains 1000 (different) rolls of
a dice …
128
# Using "k" and "m" from (3.2) and (3.4), estimate the expected value
129
# and variance of the random variable z = 2k-m
130
m<- sample(1:6,1000, replace = T)
131
m
132
k
133
z<-2*k-m
134
expectedvalue<-mean(z)
135
round(expectedvalue)
136
# 3.5 Assume the yearly stock return to be normally distributed with a
mean of 0.12 and …
137
# a standard deviation of 0.2. Create a variable "stock" with 100
draws of stock returns …
138
stock<-rnorm(mean=0.12,sd=0.2,100)
139stock
140
# 3.6 What is the probability of a negative stock return?
141
# Answer this question ...
142
# (a) by using the variable "stock" from (3.5)
143
# (b) by calculating the (theoretical) probability for a normal
distribution …
144
mean(pnorm(stock<0))
145
round(mean(pnorm(stock<0)))
146
################################################
147
# 4: Functions and Optimization (25 points)#
148
################################################
149
# 4.1 Create the function f(x)=x^2 in R
150
f<- function(x){
151
x^2
152
}
153
154
# 4.2 Calculate the value of f for x=1
155
f(1)
156
# 4.3 Create a plot of the function for the interval [-2, 2]
157
# If in doubt, type "?plot" to get the help file for the function
158
plot(f,
-2,2)
159
# 4.4 Numerically, by using R, find the location of the minimum using the
optim …
160
# function. Store the result of your minimization (the location of
the minimum) …
161
# in a variable called xmin
162
xmin<- optim(par=1,fn=f,gr=NULL, method = 'BFGS')
163
xmin
164
# 4.5 Now try to find the location of the minimum by implementing a grid
search …
165
# yourself. Choose N=100 grid points. Search in an interval between
…
-2 and 2.
166
# Store the result of your minimization (the location of the minimum)
in a …
167
# variable called xmin
_grid
168
169
#in questo caso ho provato ad utilizzare questo metodo
dell'ottimizzazione con grid …
170
#nonostante non riesca a svolgerlo
171
kgrid<-seq(0,100,1)
172
ugrid<-c(kgrid)
173
k
_
ottimo<- kgrid[which.min(ugrid)]
174
k
ottimo
_
175
xmin
_grid<- optim(par=1,fn=kgrid, gr=grad ,lower=-2, upper=2 ,method =
'BFGS') …
176
177
#in questo caso devo utilizzare il comando grid research per trovare il
178
#punto di minimo della variabile xmin
_grid
179
# 4.6 Answer in a short comment (<= 2 sentences). The results from (4.4)
and (4.5) …
180
# are not identical. Why?
181
#4.4 is negative infinity while the 4.5 is between -2 and 2
182
183
####################################################
184
# 5: Functions and algorithms (25 points) #
185
####################################################
186
# 5.1 The Luhn Algorithm is used to check whether a credit card number
is valid. It goes …
187
# like this
188
# a) process individual digits from right to left
189
# b) leave digits number 1,3,5 etc (counted from right) unchanged
190
# c) multiply digits 2,3,6 etc (counted from right) by 2
191
# d) if a digit (after multiplying by 2) is larger than 9, subtract
9 …
192
# e) calculate the sum of all (processed) digits
193
# IF the result can be divided by 10, the number is a valid credit
…
card number
194
#
195
# Example: 63487
196
# Right to left: do not change 7, multiply 8 by 2 and subtract 9, do
not change 4, …
197
# multiply 3 by 2 and do not subtract anything, do
not change 6 …
198
# 7 + 8*2-9 + 4 + 3*2 + 6 = 30 --> the number is
valid …
199
# Hint: The operation x %% y yields the remainder of the division
…
x/y.
200
# For instance, 7 %% 4 gives 3
201
202
# Write a function called checkLuhn that takes as argument a vector of
individual digits …
203
# and returns TRUE if the number is a valid number and FALSE if it is not
…
valid.
204
checkLuhn<- function(x){
205
count= 0
206
if(x==1 && 3 && 5){
207
return(x)
208
}
209
210
else if(x==2 && 3 && 6){
return(x*2)
211
}
212
213
else if (x*2>9){
return(x-9)
214
}
215
return(x)
216
}
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
224
225
Saved: 13.01.26, 15:34:48 Page 1/6
Printed for: Peter Gruber
