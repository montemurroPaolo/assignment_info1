# Exam Correction: Erica Trofimov
## Informatica 2 - Exam 2025-09-04

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1 <- seq(10, 1, -1)` | Correct | 2/2 |
| 1.2 | `v2 <- seq(3, 30, 3)` | Correct | 2/2 |
| 1.3 | rbind with v1-v5 | Overwrites v1,v2 and v5 starts at 10 not 5 | 1/2 |
| 1.4 | `M[1, ]` | Correct | 1/1 |
| 1.5 | `v1[length(v1)]` | Correct | 2/2 |
| 1.6 | log10 correct in 2 & 3 | First calculation has wrong operator | 1/2 |
| 1.7 | `u <- 10^(-5)` | Correct | 1/1 |
| 1.8 | "R is case-sensitive" | Excellent explanation | 1/1 |

**Q1 Total: 10/13**

### Error in 1.6 (first expression):
```r
# Student wrote:
((12)/(19 -7 ))^(1 / 5)  # Wrong: division instead of subtraction

# Correct:
((12-(19-7))^1)/5
```

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$Eurozone)` | Correct concept, column name variation | 1/2 |
| 2.5 | Subset approach | Logic ok but wrong column name | 1/2 |
| 2.6 | Formula errors in b) and c) | Uses total EU GDP for all parts | 1/3 |
| 2.7 | `Eudata$Accession[which.min(...)]` | Correct | 2/2 |
| 2.8 | `nrow(Eudata[Eudata$Accession == 1953, ])` | Wrong year (1958) | 0/2 |
| 2.9 | Identifies but doesn't remove | Missing `Eudata <-` | 0/2 |
| 2.10 | Updates Eurozone column | Should be IsEurozone but concept correct | 1/2 |

**Q2 Total: 12/20**

### Errors in 2.6:
```r
# Student wrote (WRONG for b and c):
b = sum(Eudata$GDP)/sum(Eurozone$Population)  # Uses total EU GDP!
c = sum(Eudata$GDP)/sum(NonEuro$Population)    # Uses total EU GDP!

# Correct:
b = sum(Eurozone$GDP) * 1e6 / sum(Eurozone$Population)
c = sum(NonEuro$GDP) * 1e6 / sum(NonEuro$Population)
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6, 1, replace=TRUE)` | Correct | 2/2 |
| 3.2 | `k <- sample(1:6, 1000, replace=TRUE)` | Correct | 2/2 |
| 3.3 | `(k4 + k5) / length(k)` | Correct | 2/2 |
| 3.4 | m, z, mean_z, var_z | Complete | 3/3 |
| 3.5 | `rnorm(100, 0.12, 0.3)` | Wrong sd (0.3 instead of 0.2) | 1/2 |
| 3.6a | `neg_stock / length(stock)` | Correct | 2/2 |
| 3.6b | `pnorm(0, neg_stock, ...)` | Wrong parameters | 0/2 |

**Q3 Total: 12/15**

### Error in 3.6b:
```r
# Student wrote (WRONG):
pnorm(0, neg_stock, lower.tail = TRUE)  # Uses count of negatives!

# Correct:
pnorm(0, mean = 0.12, sd = 0.2)
```

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f = function(x){ return(x^2) }` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `plot(f, xlim = c(-2,2))` | Correct | 4/4 |
| 4.4 | optim with BFGS | Correct optim usage, minor extraction issue | 5/6 |
| 4.5 | Grid search implemented | Reference to undefined x_grid | 4/6 |
| 4.6 | Detailed explanation | Excellent discussion | 4/4 |

**Q4 Total: 22/25**

### Error in 4.4:
```r
# Student wrote:
xmin = opt$value  # This is the MINIMUM VALUE, not the location!

# Correct:
xmin = opt$par    # This is the LOCATION of the minimum
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 25/25**

Excellent implementation:
```r
checkLuhn <- function(digits) {
  right_digits <- rev(digits)
  for (i in 1:length(right_digits)) {
    if (i %% 2 == 0) {
      doubled <- right_digits[i] * 2
      if (doubled > 9) {
        doubled = doubled - 9
      }
      right_digits[i] <- doubled
    }
  }
  sum <- sum(right_digits)
  if (sum %% 10 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
```

Correct logic: reverses digits, doubles even positions, subtracts 9 if needed, checks divisibility by 10.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 10 | 13 |
| Q2: Data/Logic | 12 | 20 |
| Q3: Simulation | 12 | 15 |
| Q4: Functions | 22 | 25 |
| Q5: Luhn Algorithm | 25 | 25 |
| **TOTAL** | **83** | **100** |
