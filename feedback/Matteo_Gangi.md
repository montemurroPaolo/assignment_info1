# Exam Correction: Matteo Gangi
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Matteo_Gangi.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1=seq(10, 1, -1)` | Correct | 2/2 |
| 1.2 | `v2= seq(1, 30, 3)` | Wrong: starts at 1, should be 3 | 1/2 |
| 1.3 | rbind approach | Correct | 2/2 |
| 1.4 | `M[1,]` | Correct | 1/1 |
| 1.5 | `tail(v1, 1)` | Correct | 2/2 |
| 1.6 | Correct | `log0` typo (clearly meant log10) | 2/2 |
| 1.7 | `u= 10^(-5)` | Correct | 1/1 |
| 1.8 | "R is case sensitive" | Correct | 1/1 |

**Q1 Total: 12/13**

### Note on 1.6:
`log0` is a clear typo for `log10` - full credit given.

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Popolation)` | Typo "Popolation" but correct logic | 1/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$Eurozone== TRUE)` | Correct | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone== TRUE])` | Correct | 2/2 |
| 2.6 | Sum of ratios | Wrong formula, partial credit for attempt | 1/2 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession == 1953)` | Correct | 2/2 |
| 2.9 | Missing comma | Correct concept, minor syntax error | 1/2 |
| 2.10 | Not answered | Missing | 0/2 |

**Q2 Total: 15/20**

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6, 1, TRUE)` | Correct | 2/2 |
| 3.2 | `k=sample(1:6, 1, TRUE)` | Likely typo (1 instead of 1000), correct concept | 1/2 |
| 3.3 | `mean(k==4 \| k==5)` | Correct logic | 2/2 |
| 3.4 | `z= 2*K - m` | K instead of k is a typo | 2/3 |
| 3.5 | `rnorm(100, 0.12, 0.2)` | Correct | 2/2 |
| 3.6a | `mean(stock<0)` | Correct | 2/2 |
| 3.6b | `pnorm(0, 0.12, 0.2)` | Correct | 2/2 |

**Q3 Total: 13/15**

### Error in 3.4:
```r
# Student wrote:
z= 2*K - m  # K is undefined! (k was defined)

# R is case sensitive - should be:
z = 2*k - m
```

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f = function(x){ x^2 }` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `curve(f, -2, 2)` | Correct | 4/4 |
| 4.4 | Uses `neg_f` | Partial: Minimizing -f finds MAXIMUM | 2/6 |
| 4.5 | Not completed | Missing | 0/6 |
| 4.6 | Not answered | Missing | 0/4 |

**Q4 Total: 11/25**

---

## Question 5: Luhn Algorithm (25 points)

**Score: 0/25**

Function not implemented.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 12 | 13 |
| Q2: Data/Logic | 15 | 20 |
| Q3: Simulation | 13 | 15 |
| Q4: Functions | 11 | 25 |
| Q5: Luhn Algorithm | 0 | 25 |
| **TOTAL** | **53** | **100** |
