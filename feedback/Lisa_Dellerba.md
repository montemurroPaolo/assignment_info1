# Exam Correction: Lisa Dellerba (Dell Erba Lisa)
## Informatica 2 - Exam 2025-09-04

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1<-10:1` | Correct | 2/2 |
| 1.2 | `v2<-seq(3,30,by=3)` | Correct | 2/2 |
| 1.3 | rbind approach | row4 typo (292), row5 starts with 10 | 1/2 |
| 1.4 | `M[1,]` | Correct | 1/1 |
| 1.5 | `tail(v1,1)` | Correct | 2/2 |
| 1.6 | First expr wrong, others correct | Partial (log10 correct!) | 1/2 |
| 1.7 | `u<-10^(-5)` | Correct | 1/1 |
| 1.8 | "R is a case sensitive" | Correct | 1/1 |

**Q1 Total: 10/13**

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `min/max(Eudata$Population)` | Returns min/max pop, not by area | 0/2 |
| 2.4 | `sum(Eudata$Eurozone==1)` | Correct concept, column name variation | 1/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone==1])` | Correct concept, column name variation | 1/2 |
| 2.6 | Complete subsetting approach | Good structure, wrong column | 2/3 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession==1953)` | Wrong year (1958) | 0/2 |
| 2.9 | `Eudata[...!="United Kingdom",]` | Correct! | 2/2 |
| 2.10 | `Eudata[...=="Bulgaria",]` | Filters to only Bulgaria | 0/2 |

**Q2 Total: 12/20**

### Error in 2.3:
```r
# Student wrote (WRONG):
min(Eudata$Population)  # Returns smallest population VALUE
max(Eudata$Population)  # Returns largest population VALUE

# Correct (population of countries with min/max AREA):
Eudata$Population[which.min(Eudata$Area)]
Eudata$Population[which.max(Eudata$Area)]
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6,1,replace=TRUE)` | Correct | 2/2 |
| 3.2 | `sample(1:6,1000,replace=TRUE)` | Correct | 2/2 |
| 3.3 | `mean(k==4 \| k==5)` | Correct | 2/2 |
| 3.4 | m, z, mean, var all present | Complete | 3/3 |
| 3.5 | `rnorm(100,0.12,0.2)` | Correct | 2/2 |
| 3.6a | `mean(stock<0)` | Correct | 2/2 |
| 3.6b | `pnorm(0,0.12,0.2)` | Correct | 2/2 |

**Q3 Total: 15/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f<-function(x){ return(x^2) }` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `curve(f,-2,2)` | Correct | 4/4 |
| 4.4 | optim with L-BFGS | Correct optim usage, minor extraction issue | 5/6 |
| 4.5 | Uses optim with Brent | Should implement manual grid search | 0/6 |
| 4.6 | "floating-point approximation" | Partial explanation | 2/4 |

**Q4 Total: 16/25**

---

## Question 5: Luhn Algorithm (25 points)

**Score: 23/25**

Excellent implementation with correct logic:

```r
checkLuhn <- function(CardNumber){
  digits <- as.numeric(unlist(strsplit(CardNumber, "")))
  digits_rev <- rev(digits)
  for(i in seq_along(digits_rev)){
    if(i %% 2 == 0){
      digits_rev[i] <- digits_rev[i] * 2
      if(digits_rev[i] > 9){
        digits_rev[i] <- digits_rev[i] - 9
      }
    }
  }
  total <- sum(digits_rev)
  return(total %% 10 == 0)
}
```

Correct algorithm:
- Reverses digits
- Doubles even positions (from right)
- Subtracts 9 if > 9
- Checks divisibility by 10

Minor deduction for minor syntax issues in the printed code.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 10 | 13 |
| Q2: Data/Logic | 12 | 20 |
| Q3: Simulation | 15 | 15 |
| Q4: Functions | 16 | 25 |
| Q5: Luhn Algorithm | 23 | 25 |
| **TOTAL** | **78** | **100** |
