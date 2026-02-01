# Exam Correction: Assiya Mokabbal
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Assiya_Mokabbal.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided as `# <Mokabbal Assiya>`.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1 = seq(10, 1, -1)` | Correct | 2/2 |
| 1.2 | `v2 = seq(3, 30, 3)` | Correct | 2/2 |
| 1.3 | `rbind(seq(1,291,10), seq(2,292,10), ...)` | Complex approach with errors in sequences | 1/2 |
| 1.4 | `M[1,]` | Correct | 1/1 |
| 1.5 | `tail(v1, 1)` | Correct | 2/2 |
| 1.6 | Multiple expressions | Wrong: Uses `log()` instead of `log10()`, parentheses issues | 0/2 |
| 1.7 | `u = 10^(-5)` | Correct | 1/1 |
| 1.8 | `"R is case sensitive"` | Correct | 1/1 |

**Q1 Total: 10/13**

### Errors in 1.6:
```r
# Student wrote:
(12-(19-7))^1/5           # Wrong: uses - instead of /, missing parentheses on exponent
log(1)+log(2)/((pi+1)/(pi-1))  # Wrong: log() instead of log10(), parentheses wrong
log(sin(2)/exp(2))        # Wrong: should be log10()

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
| 2.3 | `which.min/max(Eudata$Area)` | Correct approach | 2/2 |
| 2.4 | `sum(Eudata$Eurozone==TRUE)` | Correct | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone == TRUE])` | Correct | 2/2 |
| 2.6 | `sum(Eudata$GDP/Eudata$Population)` | Wrong formula, partial credit for attempt | 1/2 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession == 1953)` | Correct | 2/2 |
| 2.9 | `Eudata[Eudata$CountyName !="United Knigdom", ]` | Typo but UK removed | 2/2 |
| 2.10 | `Eudata[Eudata$Eurozone == "Bulgaria"]` | Wrong approach entirely | 0/2 |

**Q2 Total: 17/20**

### Critical Error in 2.6:
```r
# Student wrote (WRONG):
sum(Eudata$GDP/Eudata$Population)  # Sums individual GDP/Pop ratios

# Correct formula:
sum(Eudata$GDP) * 1e6 / sum(Eudata$Population)  # Total GDP / Total Population
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `dice = sample(1:6, 1, replace=TRUE)` | Correct | 2/2 |
| 3.2 | `k = sample(1:6, 1000, replace=TRUE)` | Correct | 2/2 |
| 3.3 | `mean(k==4 \| k==5)` | Correct | 2/2 |
| 3.4 | m, z, mean(z) present | Missing `var(z)` | 1.5/3 |
| 3.5 | `returns_stock = rnorm(100, 0.12, 0.2)` | Correct | 2/2 |
| 3.6a | `mean(returns_stock > 0)` | Wrong: should be `< 0` for negative returns | 0/2 |
| 3.6b | `pnorm(0, 0.12, 0.2)` | Correct | 2/2 |

**Q3 Total: 11.5/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f = function(x){x^2}` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `curve(f, -2, 2)` | Correct | 4/4 |
| 4.4 | Creates `neg_f` and uses optim | Partial: Minimizing `-f(x)` finds MAXIMUM, not minimum | 2/6 |
| 4.5 | Not completed | Missing | 0/6 |
| 4.6 | Not answered | Missing | 0/4 |

**Q4 Total: 11/25**

### Error in 4.4:
```r
# Student wrote (WRONG - finds maximum):
neg_f = function(x){ -f(x) }
res <- optim(par=0, fn=neg_f, method="Brent", lower=-2, upper=2)

# Correct (finds minimum of x^2):
res <- optim(par=1, fn=f, method="Brent", lower=-2, upper=2)
xmin <- res$par
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 0/25**

Function not implemented. Only the test data line was present.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 10 | 13 |
| Q2: Data/Logic | 17 | 20 |
| Q3: Simulation | 11.5 | 15 |
| Q4: Functions | 11 | 25 |
| Q5: Luhn Algorithm | 0 | 25 |
| **TOTAL** | **51.5** | **100** |
