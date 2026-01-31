# Exam Correction: Damiano Spiatta
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Damiano_Spiatta.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1<- 10:1` | Correct | 2/2 |
| 1.2 | `v2 <- seq(3,30, by = 3)` | Correct | 2/2 |
| 1.3 | `M <- matrix(1:300, nrow = 10, ncol = 30)` | Wrong dimensions (should be 5 rows) | 1/2 |
| 1.4 | `print(M[1,])` | Correct | 1/1 |
| 1.5 | `print(v2[length(v2)])` | Partial: Wrong variable (v2 instead of v1), right concept | 1/2 |
| 1.6 | Missing parenthesis, wrong log | Syntax error | 0/2 |
| 1.7 | `u <- 10^(-5)` | Correct | 1/1 |
| 1.8 | "R is case sensitive" | Correct | 1/1 |

**Q1 Total: 9/13**

---

## Question 2: Data and Logical Conditions (20 points)

**Note: Uses `myData` instead of `Eudata` - penalized once, not per question.**

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `sum()` (empty) | Not answered | 0/2 |
| 2.2 | `sum(myData$Population)` | Correct (-1 for myData, counted once) | 1/2 |
| 2.3 | `which.min/max` approach | Correct | 2/2 |
| 2.4 | `sum(myData$IsEurozone == 1)` | Correct | 2/2 |
| 2.5 | Similar approach | Correct | 2/2 |
| 2.6 | `sum(GDP)/sum(Population)` | Correct formula | 3/3 |
| 2.7 | Logical comparison | Returns TRUE/FALSE, not the year | 0/2 |
| 2.8 | `sum(Accession == 1953)` | Correct | 2/2 |
| 2.9 | Missing assignment `<-` | Not permanent | 0/2 |
| 2.10 | Update Bulgaria | Correct | 2/2 |

**Q2 Total: 14/20**

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `dice <- sample(1:6, size = 1, replace = TRUE)` | Correct | 2/2 |
| 3.2 | `k <- sample(1:6, size = n, replace = TRUE)` | Correct | 2/2 |
| 3.3 | `mean(k %in% c(4, 5))` | Correct | 2/2 |
| 3.4 | m, z, mean(z), var(z) all present | Complete | 3/3 |
| 3.5 | `stock <- rnorm(100, mean = 0.12, sd = 0.2)` | Correct | 2/2 |
| 3.6a | `mean(stock<0)` | Correct | 2/2 |
| 3.6b | `pnorm(0, mean = 0.12, sd = 0.2)` | Correct | 2/2 |

**Q3 Total: 15/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f <- function(x){ x^2 }` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | Complete plot with labels | Excellent | 4/4 |
| 4.4 | `optim(0, f, method = "BFGS")` | Correct | 6/6 |
| 4.5 | Grid search with `which.min` | Correct | 6/6 |
| 4.6 | "optim searches continuous space, grid search is discrete" | Perfect | 4/4 |

**Q4 Total: 25/25**

---

## Question 5: Luhn Algorithm (25 points)

```r
checkLuhn <- function(digits) {
  rev_digits <- rev(digits)
  for (i in seq_along(rev_digits)) {
    if (i %% 2 == 0) {
      rev_digits[i] <- rev_digits[i] * 2
      if (rev_digits[i] > 9) {
        rev_digits[i] <- rev_digits[i] - 9
      }
    }
  }
  sum(rev_digits) %% 10 == 0
}
```

**Correct implementation!**

**Q5 Total: 25/25**

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 9 | 13 |
| Q2: Data/Logic | 14 | 20 |
| Q3: Simulation | 15 | 15 |
| Q4: Functions | 25 | 25 |
| Q5: Luhn Algorithm | 25 | 25 |
| **TOTAL** | **90** | **100** |
