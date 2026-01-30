# Exam Correction: Malak El Fatih
## Informatica 2 - Exam 2025-09-04

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1 = seq(10,0,-1)` | Should end at 1, not 0 | 1/2 |
| 1.2 | `v2 = 3 *(1:10)` | Correct | 2/2 |
| 1.3 | `matrix(seq(1,300), nrow=5, byrow=TRUE)` | **Correct!** | 2/2 |
| 1.4 | `M[1, ]` | Correct | 1/1 |
| 1.5 | Not answered | Missing | 0/2 |
| 1.6 | Wrong log function, first wrong | log() instead of log10() | 0/2 |
| 1.7 | Not answered | Missing | 0/1 |
| 1.8 | Not answered | Missing | 0/1 |

**Q1 Total: 6/13**

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$IsEurozone == 1)` | **Correct column!** | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$IsEurozone == 1])` | **Correct!** | 2/2 |
| 2.6 | Complete with `*1e6` | **Excellent! Perfect formula!** | 3/3 |
| 2.7 | Not answered | Missing | 0/2 |
| 2.8 | Not answered | Missing | 0/2 |
| 2.9 | Not answered | Missing | 0/2 |
| 2.10 | Not answered | Missing | 0/2 |

**Q2 Total: 13/20**

### Excellent work on 2.6:
```r
# Perfect GDP per capita formula with million scaling:
gdp_pc_eu <- sum(Eudata$GDP) * 1e6 / sum(Eudata$Population)
gdp_pc_euro <- sum(Eudata$GDP[Eudata$IsEurozone == 1]) * 1e6 / 
               sum(Eudata$Population[Eudata$IsEurozone == 1])
gdp_pc_noneuro <- sum(Eudata$GDP[Eudata$IsEurozone == 0]) * 1e6 / 
                  sum(Eudata$Population[Eudata$IsEurozone == 0])
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6, 1)` | Correct (replace not needed for n=1) | 2/2 |
| 3.2 | `sample(1:6, 1000, replace=TRUE)` | Correct | 2/2 |
| 3.3 | `mean(k == 4 \| k == 5)` | Correct | 2/2 |
| 3.4 | m created, z missing | Incomplete | 1/3 |
| 3.5 | `rnorm(100, mean=0.12, sd=0.2)` | Correct | 2/2 |
| 3.6a | `mean(stock < 0)` | Correct | 2/2 |
| 3.6b | `pnorm(0, mean=0.12, sd=0.2)` | Correct | 2/2 |

**Q3 Total: 13/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f <- function(x) { x^2 }` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | plot with labels | Excellent, complete | 4/4 |
| 4.4 | `optimize(g, ...)` | Uses undefined `g` instead of `f` | 3/6 |
| 4.5 | Grid search with which.min | **Correct!** | 6/6 |
| 4.6 | Not answered | Missing | 0/4 |

**Q4 Total: 18/25**

### Excellent grid search implementation:
```r
N <- 100
grid <- seq(-2, 2, length.out = N)
vals <- f(grid)
xmin_grid <- grid[which.min(vals)]
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 25/25**

Excellent implementation using vectorized R operations:

```r
checkLuhn <- function(digits) {
  digits <- as.integer(digits)
  if (any(is.na(digits)) || any(digits < 0 | digits > 9)) return(FALSE)
  
  rev_digits <- rev(digits)
  pos <- seq_along(rev_digits)
  to_double <- (pos %% 2 == 0)
  rev_digits[to_double] <- rev_digits[to_double] * 2
  rev_digits[rev_digits > 9] <- rev_digits[rev_digits > 9] - 9
  sum(rev_digits) %% 10 == 0
}
```

Correct algorithm with:
- Input validation
- Reversal
- Vectorized doubling of even positions
- Subtraction of 9 when > 9
- Final check for divisibility by 10

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 6 | 13 |
| Q2: Data/Logic | 13 | 20 |
| Q3: Simulation | 13 | 15 |
| Q4: Functions | 18 | 25 |
| Q5: Luhn Algorithm | 25 | 25 |
| **TOTAL** | **77** | **100** |
