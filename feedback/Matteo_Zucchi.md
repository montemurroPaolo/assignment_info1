# Exam Correction: Matteo Zucchi
## Informatica 2 - Exam 2025-09-04

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1 <- 10:1` | Correct | 2/2 |
| 1.2 | `v2 <- seq(3, 30, 3)` | Correct | 2/2 |
| 1.3 | rbind approach | row5 starts at 10 instead of 5 | 1/2 |
| 1.4 | `M[1,]` | Correct | 1/1 |
| 1.5 | `tail(v1,1)` | Correct | 2/2 |
| 1.6 | log10 correct, first wrong | First expression uses / | 1/2 |
| 1.7 | `u= 10^(-5)` | Correct | 1/1 |
| 1.8 | "R is case sensitive" | Correct | 1/1 |

**Q1 Total: 10/13**

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum=(Eudata$Population)` | Assigns to variable `sum` instead of calling function! | 0/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$Eurozone == TRUE)` | Correct concept, column name variation | 1/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone == TRUE])` | Correct concept, column name variation | 1/2 |
| 2.6 | Sum of ratios | Wrong formula, partial credit for attempt | 1/3 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession == 1953)` | Wrong year (1958) | 0/2 |
| 2.9 | `Eudata= Eudata[-28,]` | Hardcoded row but UK removed | 2/2 |
| 2.10 | Incomplete | Syntax error | 0/2 |

**Q2 Total: 11/20**

### Critical Error in 2.2:
```r
# Student wrote (WRONG):
sum=(Eudata$Population)  # Creates variable 'sum' with the Population column

# Correct:
sum(Eudata$Population)   # Calls the sum() function
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6, 1, TRUE)` | Correct | 2/2 |
| 3.2 | `sample(1:6, 1000, TRUE)` | Correct | 2/2 |
| 3.3 | `mean(k == 4 \| k == 5)` | Correct | 2/2 |
| 3.4 | m, z, mean present | Missing variance | 1.5/3 |
| 3.5 | `rnorm(100, 0.12, 0.2)` | Correct | 2/2 |
| 3.6a | `mean(stock<0)` | Correct | 2/2 |
| 3.6b | `pnorm(0, 0.12, 0.2)` | Correct | 2/2 |

**Q3 Total: 13.5/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f= function(x){ x^2 }` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `curve(f, -2, 2)` | Correct | 4/4 |
| 4.4 | Uses `neg_f` | Partial: Minimizing -f finds MAXIMUM | 2/6 |
| 4.5 | `grid()` | Partial: grid() is for graphics, but tried | 0.5/6 |
| 4.6 | Not answered | Missing | 0/4 |

**Q4 Total: 11.5/25**

### Error in 4.4:
```r
# Student wrote (WRONG - finds maximum!):
neg_f= function(x){ -f(x) }
res= optim(par=0, fn = neg_f, ...)  # Minimizing -x^2 = maximizing x^2!

# Correct (finds minimum):
res = optim(par=0, fn=f, method="Brent", lower=-2, upper=2)
xmin = res$par
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 3/25** (partial credit for attempting)

Function was started but not completed:
```r
checkLuhn <- function(x){
  counter<- 0
  digits<-    # incomplete
}
```

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 10 | 13 |
| Q2: Data/Logic | 11 | 20 |
| Q3: Simulation | 13.5 | 15 |
| Q4: Functions | 11.5 | 25 |
| Q5: Luhn Algorithm | 3 | 25 |
| **TOTAL** | **51** | **100** |
