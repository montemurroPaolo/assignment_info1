# Exam Correction: Eleonora Moroni
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Eleonora_Moroni.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided as `#Eleonora Moroni`.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1 <- seq(10,1,-1)` | Correct | 2/2 |
| 1.2 | `v2 <- seq(3,30,3)` | Correct | 2/2 |
| 1.3 | rbind approach with row1-row5 | row5 starts with 10, should be 5 | 1/2 |
| 1.4 | `M["row1",]` | Correct (creative approach!) | 1/1 |
| 1.5 | `x<-v1; tail(x,1)` | Correct | 2/2 |
| 1.6 | First correct, log() wrong | Should use log10() | 1/2 |
| 1.7 | `u<-(10)^(-5)` | Correct | 1/1 |
| 1.8 | "R is very sensitive" | Correct concept (case sensitive) | 1/1 |

**Q1 Total: 11/13**

### Errors in 1.6:
```r
# Student wrote:
(12/(19-7))^(1/5)         # CORRECT!
(log(1)+log(2))/((pi+1)/(pi-1))  # Wrong: log() instead of log10()
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
| 2.1 | `#28` (hardcoded) | Should use nrow(Eudata) | 1/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `Eudata$Population[min(Eudata$Area)]` | Wrong: uses min() as index, not which.min() | 0/2 |
| 2.4 | `sum(Eudata$Eurozone==1)` | Correct concept, column name variation | 1/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone==1])` | Correct concept, column name variation | 1/2 |
| 2.6 | a) and b) present, c) missing | Formula correct but incomplete | 2/3 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession==1953)` | Correct | 2/2 |
| 2.9 | `Eudata[Eudata$Country != "UK"]` | Missing comma (syntax error) | 1/2 |
| 2.10 | Not answered | Missing | 0/2 |

**Q2 Total: 12/20**

### Error in 2.3:
```r
# Student wrote (WRONG):
Eudata$Population[min(Eudata$Area)]  # Uses smallest area VALUE as row index!

# Correct:
Eudata$Population[which.min(Eudata$Area)]  # Uses INDEX of minimum
Eudata$Population[which.max(Eudata$Area)]
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6,1)` | Correct (replace not needed for n=1) | 2/2 |
| 3.2 | `k<-sample(1:6,1000, replace=TRUE)` | Correct | 2/2 |
| 3.3 | Function with parenthesis issue | Partial - logic correct, syntax error | 1/2 |
| 3.4 | m, z created | Missing mean(z) and var(z) output | 1/3 |
| 3.5 | `stock<-rnorm(100,0.12,0.2)` | Correct | 2/2 |
| 3.6a | `sum(stock<0)/length(stock)` | Correct | 2/2 |
| 3.6b | Not answered | Missing pnorm() | 0/2 |

**Q3 Total: 10/15**

### Error in 3.3:
```r
# Student wrote (syntax error):
prob_4_or_5<- function(k) {sum(k%in% c(4,5)/length(k))}  # Parenthesis wrong

# Correct:
prob_4_or_5 <- function(k) { sum(k %in% c(4,5)) / length(k) }
# Or simply:
mean(k %in% c(4,5))
```

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f<-function(x) { return<-x^2 }` | Uses assignment instead of return() | 2/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `plot(x,f(x),"l")` | Works but type argument placement | 3/4 |
| 4.4 | Custom function (not optim) | Did not use optim() function | 0/6 |
| 4.5 | Not completed | Missing | 0/6 |
| 4.6 | Not answered | Missing | 0/4 |

**Q4 Total: 7/25**

### What 4.4 should look like:
```r
# Correct approach:
result <- optim(par=1, fn=f, method="Brent", lower=-2, upper=2)
xmin <- result$par
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 0/25**

Function not implemented.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 11 | 13 |
| Q2: Data/Logic | 12 | 20 |
| Q3: Simulation | 10 | 15 |
| Q4: Functions | 7 | 25 |
| Q5: Luhn Algorithm | 0 | 25 |
| **TOTAL** | **42** | **100** |
