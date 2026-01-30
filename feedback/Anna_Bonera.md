# Exam Correction: Anna Bonera
## Informatica 2 - Exam 2025-09-04

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided as comment.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1 <- seq(10,1,-1)` | Correct | 2/2 |
| 1.2 | `v2 <- seq(3,30,3)` | Correct | 2/2 |
| 1.3 | *Not answered* | Missing | 0/2 |
| 1.4 | *Not answered* | Missing (depends on 1.3) | 0/1 |
| 1.5 | `tail(v1,1)` | Correct | 2/2 |
| 1.6 | See below | Partial | 1/2 |
| 1.7 | `u <- (10)^(-5)` | Correct | 1/1 |
| 1.8 | "case sensitive" | Correct concept | 1/1 |

### 1.6 Issue
Used `log()` (natural log) instead of `log10()` for calculations 2 and 3.

```r
# Student wrote:
(log(1)+log(2))/((pi+1)/(pi-1))
log((sin(2))/exp(2))

# Should be:
(log10(1)+log10(2))/((pi+1)/(pi-1))
log10(sin(2)/exp(2))
```

**Q1 Total: 9/13**

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | *Not answered* | Missing - Should be `nrow(Eudata)` | 0/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `which.min/which.max` approach | Correct | 2/2 |
| 2.4 | `sum(Eudata$Eurozone==TRUE)` | Correct | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone==TRUE])` | Correct | 2/2 |
| 2.6 | `sum(GDP/Population)` | Wrong formula, partial credit for attempt | 1/3 |
| 2.7 | *Not answered* | Missing - Should be `min(Eudata$Accession)` | 0/2 |
| 2.8 | `sum(Eudata$Accession==1953)` | Correct | 2/2 |
| 2.9 | *Not answered* | Missing | 0/2 |
| 2.10 | *Not answered* | Missing | 0/2 |

### 2.6 Critical Error
```r
# Student wrote (WRONG):
sum(Eudata$GDP/Eudata$Population)  # Sums individual ratios

# Correct formula:
sum(Eudata$GDP) * 1e6 / sum(Eudata$Population)  # Total GDP / Total Population
```

**Q2 Total: 11/20**

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `dice=sample(1:6,1)` | Correct | 2/2 |
| 3.2 | `k <- sample(1:6,1000,replace=TRUE)` | Correct | 2/2 |
| 3.3 | *Not answered* | Missing - Should be `mean(k==4 \| k==5)` | 0/2 |
| 3.4 | *Not answered* | Missing m, z, mean(z), var(z) | 0/3 |
| 3.5 | *Not answered* | Missing - Should be `stock <- rnorm(100, 0.12, 0.2)` | 0/2 |
| 3.6 | *Not answered* | Missing both parts | 0/4 |

**Q3 Total: 4/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f <- function(x){x^2}` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | *Not answered* | Missing - Should be `curve(f, -2, 2)` | 0/4 |
| 4.4 | *Not answered* | Missing optim usage | 0/6 |
| 4.5 | *Not answered* | Missing grid search | 0/6 |
| 4.6 | *Not answered* | Missing explanation | 0/4 |

**Q4 Total: 5/25**

---

## Question 5: Luhn Algorithm (25 points)

**Not attempted** - No checkLuhn function provided.

**Q5 Total: 0/25**

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 9 | 13 |
| Q2: Data/Logic | 11 | 20 |
| Q3: Simulation | 4 | 15 |
| Q4: Functions | 5 | 25 |
| Q5: Luhn Algorithm | 0 | 25 |
| **TOTAL** | **31** | **100** |

