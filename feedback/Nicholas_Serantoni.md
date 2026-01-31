# Exam Correction: Nicholas Serantoni
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Nicholas_Serantoni.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1<- (10:1)` | Correct | 2/2 |
| 1.2 | `v2<-seq(3,30,by=3)` | Correct | 2/2 |
| 1.3 | rbind approach | row5 starts at 10 instead of 5 | 1/2 |
| 1.4 | `M["row1",]` | Correct | 1/1 |
| 1.5 | `tail(v1,1)` | Correct | 2/2 |
| 1.6 | All expressions correct | Correct | 2/2 |
| 1.7 | `u<-10^5` | Should be `10^(-5)` | 0/1 |
| 1.8 | Correct explanation | Correct | 1/1 |

**Q1 Total: 11/13**

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `min/max(Eudata$Area)` | Returns area values, not population | 0/2 |
| 2.4 | `sum(Eudata$Eurozone)` | Correct | 2/2 |
| 2.5 | Uses `myData` (undefined) | Partial: Right concept, wrong variable | 1/2 |
| 2.6 | Sum of ratios, syntax errors | Wrong formula, partial credit for attempt | 1/3 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata)` | Wrong (should filter by year) | 0/2 |
| 2.9 | `Eudata[-28]` | Removes COLUMN 28, not row! | 0/2 |
| 2.10 | Not answered | Missing | 0/2 |

**Q2 Total: 10/20**

### Error in 2.3:
```r
# Student wrote (WRONG):
min(Eudata$Area)  # Returns smallest area VALUE

# Correct:
Eudata$Population[which.min(Eudata$Area)]  # Population of smallest country
```

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6,1, replace=T)` | Correct | 2/2 |
| 3.2 | `sample(1:6,10000,replace=T)` | 10000 instead of 1000 | 1/2 |
| 3.3 | `mean(k==4 \| k==5)` | Correct | 2/2 |
| 3.4 | m, z, mean present | Missing variance | 1.5/3 |
| 3.5 | `rnorm(100,mean=0.12,sd=0.2)` | Correct | 2/2 |
| 3.6a | `sum(stock<0)/length(stock)` | Correct | 2/2 |
| 3.6b | `pnorm(0,mean=0.12,sd=0.2)` | Correct | 2/2 |

**Q3 Total: 12.5/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `fx1<- -x^2+1` | Wrong function (should be x^2) | 0/3 |
| 4.2 | `fx(x=1)` | Uses wrong function | 1/2 |
| 4.3 | `plot(fx,-2,2)` | Uses wrong function | 2/4 |
| 4.4 | `optimize(fx, interval=c(-2,2))$minimum` | Uses wrong function | 4/6 |
| 4.5 | Not completed | Missing | 0/6 |
| 4.6 | Not answered | Missing | 0/4 |

**Q4 Total: 7/25**

### Error in 4.1:
```r
# Student wrote:
fx<- function(x){
  fx1<- -x^2+1  # This is -x^2 + 1, not x^2!
}

# Correct:
f <- function(x){ x^2 }
```

---

## Question 5: Luhn Algorithm (25 points)

**Score: 3/25** (partial credit for attempting)

Function was started but not completed.

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 11 | 13 |
| Q2: Data/Logic | 10 | 20 |
| Q3: Simulation | 12.5 | 15 |
| Q4: Functions | 7 | 25 |
| Q5: Luhn Algorithm | 3 | 25 |
| **TOTAL** | **45.5** | **100** |
