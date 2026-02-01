# Exam Correction: Samuel Boccomino
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Samuel_Boccomino.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `seq(from=10, to=1, by=-1)` | Correct | 2/2 |
| 1.2 | `seq(from=3, to=30, by=3)` | Correct | 2/2 |
| 1.3 | rbind approach | Correct | 2/2 |
| 1.4 | `M[1 ,]` | Correct | 1/1 |
| 1.5 | `tail(v1, 1)` | Correct | 2/2 |
| 1.6 | Uses log() not log10() | Wrong log function | 0/2 |
| 1.7 | `u <- 10^(-5)` | Correct | 1/1 |
| 1.8 | Correct explanation | Correct | 1/1 |

**Q1 Total: 11/13**

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$Eurozone==TRUE)` | Correct | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone==TRUE])` | Correct | 2/2 |
| 2.6 | Complete with `*10^6` | Excellent formula! | 2/2 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession==1953)` | Correct | 2/2 |
| 2.9 | Correct removal | Correct | 2/2 |
| 2.10 | Not completed | Missing | 0/2 |

**Q2 Total: 18/20**

### Excellent work on 2.6:
```r
# Good approach with million scaling:
total_GDP_euros <- sum(Eudata$GDP)*10^6
GDP_per_capita_total <- total_GDP_euros / total_population
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6,1)` | Correct (replace not needed for n=1) | 2/2 |
| 3.2 | `sample(1:6,1000,replace=TRUE)` | Correct | 2/2 |
| 3.3 | `(length(p4)+length(p5))/1000` | Correct | 2/2 |
| 3.4 | m, z, mean(z), var(z) | Complete | 3/3 |
| 3.5 | `rnorm(100,mean=0.12,sd=0.2)` | Correct | 2/2 |
| 3.6a | `sum(stock<0)/length(stock)` | Correct | 2/2 |
| 3.6b | `pnorm(0,mean=0.12,sd=0.2)` | Correct | 2/2 |

**Q3 Total: 15/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f <- function(x){x^2}` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `curve(f,-2,2)` | Correct | 4/4 |
| 4.4 | optim with L-BFGS-B, extracts $par | Correct | 6/6 |
| 4.5 | Grid search with loop | Stores best_value not best_x | 4/6 |
| 4.6 | "Because f(x) is continuous" | Incomplete explanation | 2/4 |

**Q4 Total: 21/25**

### Good grid search implementation:
```r
grid <- seq(from = -2, to = 2, by = 0.04)
best_value <- Inf
best_x <- NA
for(x in grid){
  current_value <- f(x)
  if(current_value < best_value){
    best_value <- current_value
    best_x <- x
  }
}
# Note: should store best_x in xmin_grid, not best_value
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 18/25**

Good attempt with mostly correct logic:

```r
checkLuhn <- function(credit_card_number){
  digits <- as.numeric(unlist(strsplit(as.character(credit_card_number))))
  n <- lenght(digits)  # Typo: lenght → length
  for(i in seq(n, 1, -2)){
    if(i>1){
      digits[i-1] <- digits[i-1]*2
      if(digits[i-1]>9)
        digits[i-1] <- digits[i-1]-9
    }
  }
  return(sum(digits)%%10==0)
}
```

Issues:
- Typo: `lenght` should be `length`
- Logic for doubling positions is slightly off

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 11 | 13 |
| Q2: Data/Logic | 18 | 20 |
| Q3: Simulation | 15 | 15 |
| Q4: Functions | 21 | 25 |
| Q5: Luhn Algorithm | 18 | 25 |
| **TOTAL** | **85** | **100** |
