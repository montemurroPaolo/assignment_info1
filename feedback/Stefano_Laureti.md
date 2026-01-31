# Exam Correction: Stefano Laureti
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Stefano_Laureti.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1<-seq(10,1,-1)` | Correct | 2/2 |
| 1.2 | `v2<-seq(3,30, 3)` | Correct | 2/2 |
| 1.3 | `matrix(seq(1, 300, 2), ...)` | seq by 2 gives only odd numbers | 0/2 |
| 1.4 | `M[1, ]` | Correct | 1/1 |
| 1.5 | `tail(v1, 1)` | Correct | 2/2 |
| 1.6 | All expressions correct | Correct | 2/2 |
| 1.7 | `u<-c(10^-5)` | Correct | 1/1 |
| 1.8 | Excellent explanation | Correct | 1/1 |

**Q1 Total: 11/13**

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population, na.rm=TRUE)` | Correct | 2/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$IsEurozone == 1)` | **Correct column!** | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$IsEurozone == 1])` | **Correct!** | 2/2 |
| 2.6 | Complete formula with `*1e6` | **Excellent!** | 2/2 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession == 1953)` | Correct | 2/2 |
| 2.9 | Uses backtick notation | Correct | 2/2 |
| 2.10 | Not completed | Missing | 0/2 |

**Q2 Total: 18/20**

### Excellent work on 2.6:
```r
gdp_pc_all <- (sum(Eudata$GDP, na.rm = TRUE) * 1e6) / sum(Eudata$Population, na.rm = TRUE)
gdp_pc_ez <- (sum(Eudata$GDP[Eudata$IsEurozone == 1], na.rm = TRUE) * 1e6) / 
             sum(Eudata$Population[Eudata$IsEurozone == 1], na.rm = TRUE)
gdp_pc_nonez <- (sum(Eudata$GDP[Eudata$IsEurozone == 0], na.rm = TRUE) * 1e6) / 
                sum(Eudata$Population[Eudata$IsEurozone == 0], na.rm = TRUE)
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6,1,replace=TRUE)` | Correct | 2/2 |
| 3.2 | `seq(sample(...))` | seq() wrapper wrong, 5000 not 1000 | 0/2 |
| 3.3 | `sum(k%%4)` | Modulo instead of equality | 0/2 |
| 3.4 | seq() wrapping | Partial | 1/3 |
| 3.5 | `sdr=sqrt(0.2)` | sd=0.2, not sqrt(0.2) | 1/2 |
| 3.6a | Uses pnorm | Should use empirical mean(stock<0) | 0/2 |
| 3.6b | `pnorn` typo | Typo: pnorn → pnorm (partial credit) | 1/2 |

**Q3 Total: 5/15**

### Errors:
```r
# Student wrote (WRONG):
k<-seq(sample(1:6,5000,replace=TRUE))  # seq() unnecessary, 5000 wrong

# Correct:
k <- sample(1:6, 1000, replace=TRUE)
```

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f<-function(x) x^2` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `curve(f, from = -2, to = 2)` | Correct | 4/4 |
| 4.4 | `optimize(f, interval = c(-2, 2))$minimum` | Correct | 6/6 |
| 4.5 | Uses optimize again | Should implement manual grid | 0/6 |
| 4.6 | "x^2 -> -Inf" | Wrong: x^2 → +Inf | 0/4 |

**Q4 Total: 15/25**

---

## Question 5: Luhn Algorithm (25 points)

**Score: 5/25** (partial credit for attempting)

Function is incomplete and has incorrect logic (uses Collatz conjecture instead of Luhn).

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 11 | 13 |
| Q2: Data/Logic | 18 | 20 |
| Q3: Simulation | 5 | 15 |
| Q4: Functions | 15 | 25 |
| Q5: Luhn Algorithm | 5 | 25 |
| **TOTAL** | **56** | **100** |
