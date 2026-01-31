# Exam Correction: Leonardo Zanga
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Leonardo_Zanga.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1<-seq(10,1,-1)` | Correct | 2/2 |
| 1.2 | `v2<-3*seq(1:10)` | Correct (creative!) | 2/2 |
| 1.3 | rbind approach | row5 starts with 10 instead of 5 | 1/2 |
| 1.4 | `M[1,]` | Correct | 1/1 |
| 1.5 | `M[length(M)]` | Gets last element of M, not v1 | 0/2 |
| 1.6 | Multiple errors | Wrong log function, wrong operations | 0/2 |
| 1.7 | `u<-10^(-5)` | Correct | 1/1 |
| 1.8 | "U and u are different" | Correct | 1/1 |

**Q1 Total: 8/13**

### Error in 1.5:
```r
# Student wrote (WRONG):
M[length(M)]  # Gets last element of matrix M!

# Correct:
v1[length(v1)]  # Gets last element of v1
# Or: tail(v1, 1)
```

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | Filters by Eurozone | Should sum ALL EU countries | 0/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `Sum(Eudata$Eurozone==TRUE)` | `Sum` doesn't exist (case sensitive!) | 1/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone])` | Correct | 2/2 |
| 2.6 | Sum of ratios | Wrong formula, partial credit for attempt | 1/2 |
| 2.7 | `min(Eudata$Accesion)` | Typo "Accesion" but correct logic | 2/2 |
| 2.8 | Uses CountyName | Should count, not sum names | 0/2 |
| 2.9 | `Eudata[...=='UK',]` | KEEPS UK instead of removing | 0/2 |
| 2.10 | Incomplete | Wrong approach | 0/2 |

**Q2 Total: 10/20**

### Critical Error in 2.9:
```r
# Student wrote (WRONG - keeps UK only!):
Eudata<-Eudata[Eudata$countyname=='United Kingdom',]

# Correct (removes UK):
Eudata <- Eudata[Eudata$CountyName != 'United Kingdom', ]
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6,1,replace=TRUE)` | Correct | 2/2 |
| 3.2 | `sample(1:6,100,replace=TRUE)` | 100 instead of 1000 | 1/2 |
| 3.3 | `length(k[k>=4 & k<=5])/length(k)` | Correct logic | 2/2 |
| 3.4 | m, z, mean but no var | Missing variance | 1.5/3 |
| 3.5 | `rnorm(100,0.12,0.2)` | Correct (var named "stocks") | 2/2 |
| 3.6a | `mean(stocks<0)` | Correct | 2/2 |
| 3.6b | `pnorm(0,0.12,0.2)` | Correct | 2/2 |

**Q3 Total: 12.5/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | Function with print() | Works but should use return() | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `plot(f,2,-2)` | Arguments reversed | 3/4 |
| 4.4 | optim with BFGS | Correct optim usage, minor extraction issue | 5/6 |
| 4.5 | Uses optim again | Should implement grid search manually | 0/6 |
| 4.6 | "because i have add upper..." | Incomplete answer | 0/4 |

**Q4 Total: 13/25**

### What 4.5 should look like:
```r
# Manual grid search:
x <- seq(-2, 2, length.out=100)
y <- f(x)  # f is vectorized
xmin_grid <- x[which.min(y)]
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 3/25** (partial credit for attempting)

Function is incomplete and has major syntax errors. The logic was not properly implemented.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 8 | 13 |
| Q2: Data/Logic | 10 | 20 |
| Q3: Simulation | 12.5 | 15 |
| Q4: Functions | 13 | 25 |
| Q5: Luhn Algorithm | 3 | 25 |
| **TOTAL** | **48.5** | **100** |
