# Exam Correction: Ludovico Martinelli
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Ludovico_Martinelli.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1<- seq(10,1,-1)` | Correct | 2/2 |
| 1.2 | `v2<-seq(3,30,3)` | Correct | 2/2 |
| 1.3 | matrix with byrow=T | Correct | 2/2 |
| 1.4 | `M[1,]` | Correct | 1/1 |
| 1.5 | `tail(v1,1)` | Correct | 2/2 |
| 1.6 | All expressions correct | Correct | 2/2 |
| 1.7 | `u<-10^12` | Should be `10^(-5)` | 0/1 |
| 1.8 | "R is case sensitive" | Correct | 1/1 |

**Q1 Total: 12/13**

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$Eurozone==1)` | Correct | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone==1])` | Correct | 2/2 |
| 2.6 | Sum of ratios | Wrong formula, partial credit for attempt | 1/2 |
| 2.7 | Correct approach | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession==1953)` | Correct | 2/2 |
| 2.9 | Correct removal | Correct | 2/2 |
| 2.10 | Updates Accession | Acceptable approach | 2/2 |

**Q2 Total: 19/20**

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6,1)` | Correct (replace not needed for n=1) | 2/2 |
| 3.2 | `sample(1:6,1000, replace=TRUE)` | Correct | 2/2 |
| 3.3 | Calculates prob4 and prob5 separately | Should combine with OR | 1/2 |
| 3.4 | m, z, mean but no var | Missing variance | 1.5/3 |
| 3.5 | `rnorm(mean=0.12,sd=0.2,100)` | Correct | 2/2 |
| 3.6a | `mean(pnorm(stock<0))` | Wrong use of pnorm | 0/2 |
| 3.6b | Not answered separately | Missing | 0/2 |

**Q3 Total: 8.5/15**

### Error in 3.6:
```r
# Student wrote (WRONG):
mean(pnorm(stock<0))  # Applies pnorm to TRUE/FALSE values!

# Correct:
# (a) mean(stock < 0)
# (b) pnorm(0, mean=0.12, sd=0.2)
```

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f<- function(x){ x^2 }` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `plot(f,-2,2)` | Correct | 4/4 |
| 4.4 | optim with BFGS | Correct optim usage, minor extraction issue | 5/6 |
| 4.5 | Uses optim instead of grid | Should implement manual grid search | 0/6 |
| 4.6 | Partial explanation | Incomplete | 2/4 |

**Q4 Total: 16/25**

---

## Question 5: Luhn Algorithm (25 points)

**Score: 6/25** (partial credit)

The function structure is correct (function definition, if-else statements, return), but the logic is wrong:
```r
# Student's condition doesn't make sense:
if(x==1 && 3 && 5)  # This compares x to 1, then evaluates 3 and 5 as booleans!
```

Credit for: function syntax, if-else control flow, attempt at algorithm.
Missing: proper iteration through positions, correct condition logic.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 12 | 13 |
| Q2: Data/Logic | 19 | 20 |
| Q3: Simulation | 8.5 | 15 |
| Q4: Functions | 16 | 25 |
| Q5: Luhn Algorithm | 6 | 25 |
| **TOTAL** | **63.5** | **100** |
