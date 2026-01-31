# Exam Correction: Filippo Manachino
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Filippo_Manachino.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1 <- 10:1` | Correct | 2/2 |
| 1.2 | `v2 <- seq(3, 30, by=3)` | Correct | 2/2 |
| 1.3 | `matrix(1:300, nrow=10, ncol=30)` | Wrong dimensions (should be 5 rows) | 1/2 |
| 1.4 | `M[1, ]` | Correct | 1/1 |
| 1.5 | `v1[length(v1)]` | Correct | 2/2 |
| 1.6 | Multiple expressions | Syntax errors, wrong log function | 0/2 |
| 1.7 | `u <- 10^(-5)` | Correct | 1/1 |
| 1.8 | "R is case-sensitive" | Correct | 1/1 |

**Q1 Total: 10/13**

### Errors in 1.6:
```r
# Student wrote (WRONG):
((sqrt^5(12/(19-17))))  # Syntax error, 19-17 not 19-7
(log(1)+log(2))/((pi+1)/(pi-1))  # Wrong: log() instead of log10()
log((sin(2))/(exp(1))^2)  # Wrong: log() and exp(1)^2 instead of exp(2)

# Correct:
(12/(19-7))^(1/5)
(log10(1)+log10(2))/((pi+1)/(pi-1))
log10(sin(2)/exp(2))
```

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `which.min/which.max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$Eurozone==1)` | Correct | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone==1])` | Correct | 2/2 |
| 2.6 | Good structure but wrong column | Correct logic, wrong column name | 2/3 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession==1953)` | Correct | 2/2 |
| 2.9 | `subset(Eudata, Code != "UK")` | Correct! | 2/2 |
| 2.10 | Not answered | Missing | 0/2 |

**Q2 Total: 18/20**

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6, 1)` | Correct (replace not needed for n=1) | 2/2 |
| 3.2 | `k <- sample(1:6, 1000, replace=TRUE)` | Correct | 2/2 |
| 3.3 | `mean(k==4\|k==5)` | Correct | 2/2 |
| 3.4 | m, z, Expected, Variance | Complete | 3/3 |
| 3.5 | `rnorm(n=100, mean=0.12, sd=0.2)` | Correct | 2/2 |
| 3.6a | `mean(stock<0)` | Correct | 2/2 |
| 3.6b | `pnorm(0, mean=0.12, sd=0.2)` | Correct | 2/2 |

**Q3 Total: 15/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f <- function(x){x^2}` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `plot(x, f(x), type="l")` | Correct | 4/4 |
| 4.4 | optim with L-BFGS-B | Correct optim usage, minor extraction issue | 5/6 |
| 4.5 | `xmin_grid <- grid()` | Wrong: `grid()` is for graphics | 0/6 |
| 4.6 | Not answered | Missing | 0/4 |

**Q4 Total: 14/25**

### Error in 4.4:
```r
# Student wrote:
xmin <- optim(0, f, ...)  # xmin is the entire result object!

# Correct:
result <- optim(0, f, method="L-BFGS-B", lower=-2, upper=2)
xmin <- result$par
```

### What 4.5 should look like:
```r
x <- seq(-2, 2, length.out=100)
y <- sapply(x, f)
xmin_grid <- x[which.min(y)]
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 8/25** (partial credit for effort and understanding)

The student showed understanding of the algorithm concept but the implementation has major issues:

```r
# Student wrote (WRONG):
checkLuhn <- function(d){digits}  # Returns global variable, wrong
for (i in 1:16){
  if (d=="1,3,5,7,9"){  # Compares vector to string!
    ...
  }
}
```

Issues:
1. Function body returns wrong value
2. Compares entire vector to a string instead of checking positions
3. Logic for even/odd positions confused with digit values
4. Loop is outside the function

The student's comments show understanding of what should happen but couldn't translate it to code.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 10 | 13 |
| Q2: Data/Logic | 18 | 20 |
| Q3: Simulation | 15 | 15 |
| Q4: Functions | 14 | 25 |
| Q5: Luhn Algorithm | 8 | 25 |
| **TOTAL** | **67** | **100** |
