# Exam Correction: Guano Anderson
## Informatica 2 - Exam 2025-09-04

**Submission:** https://github.com/montemurroPaolo/assignment_info1/blob/main/submissions/Guano_Anderson.R

---

## Question 0: Name (2 points)
**Score: 2/2**

Name correctly provided.

---

## Question 1: R Basics (13 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 1.1 | `v1<-seq(10,1,-1)` | Correct | 2/2 |
| 1.2 | `v2<-seq(3,30,3)` | Correct | 2/2 |
| 1.3 | rbind approach | Correct | 2/2 |
| 1.4 | `M[1,]` | Correct | 1/1 |
| 1.5 | `tail(v1,1)` | Correct | 2/2 |
| 1.6 | Second expr: (pi-1)/(pi-1)=1 | Wrong denominator | 1/2 |
| 1.7 | `u<-10^5` | Should be `10^(-5)` | 0/1 |
| 1.8 | Correct | Correct | 1/1 |

**Q1 Total: 11/13**

### Error in 1.6:
```r
# Student wrote:
(log10(1)+log10(2))/((pi-1)/(pi-1))  # (pi-1)/(pi-1) = 1!

# Correct:
(log10(1)+log10(2))/((pi+1)/(pi-1))
```

---

## Question 2: Data and Logical Conditions (20 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 2.1 | `nrow(Eudata)` | Correct | 2/2 |
| 2.2 | `sum(Eudata$Population)` | Correct | 2/2 |
| 2.3 | `which.min/max(Eudata$Area)` | Correct | 2/2 |
| 2.4 | `sum(Eudata$Eurozone==1)` | Correct | 2/2 |
| 2.5 | `sum(Eudata$GDP[Eudata$Eurozone==1])` | Correct | 2/2 |
| 2.6 | Complete with `*1e6` | Good formula | 2/2 |
| 2.7 | `min(Eudata$Accession)` | Correct | 2/2 |
| 2.8 | `sum(Eudata$Accession==1953)` | Correct | 2/2 |
| 2.9 | `subset(Eudata,Code != "GB")` | Used GB code but UK removed | 2/2 |
| 2.10 | Not completed | Missing | 0/2 |

**Q2 Total: 18/20**

---

## Question 3: Simulation and Probability (15 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 3.1 | `sample(1:6,1,T)` | Correct | 2/2 |
| 3.2 | `k<-sample(1:6,1000,T)` | Correct | 2/2 |
| 3.3 | `mean(k==4 \| k==5)` | Correct | 2/2 |
| 3.4 | m, z created | Missing mean(z) and var(z) | 1/3 |
| 3.5 | `rnorm(100,0.12,0.2)` | Correct | 2/2 |
| 3.6a | `mean(stock<0)` | Correct | 2/2 |
| 3.6b | `pnorm(0,mean=0.12,sd=0.2)` | Correct | 2/2 |

**Q3 Total: 13/15**

---

## Question 4: Functions and Optimization (25 points)

| Sub-Q | Answer | Evaluation | Points |
|-------|--------|------------|--------|
| 4.1 | `f<-function(x){ x^2 }` | Correct | 3/3 |
| 4.2 | `f(1)` | Correct | 2/2 |
| 4.3 | `curve(f,from = -2,to=2)` | Correct | 4/4 |
| 4.4 | optim with BFGS | Typo: `ximin` instead of `xmin` | 5/6 |
| 4.5 | Uses optim, incomplete | Should implement manual grid | 0/6 |
| 4.6 | Not answered | Missing | 0/4 |

**Q4 Total: 14/25**

---

## Question 5: Luhn Algorithm (25 points)

**Score: 21/25**

Good logic but hardcodes test data:

```r
checkLuhn<-function(v1){
  v1<-c(6,3,4,8,7)  # WRONG: Overwrites input with hardcoded value!
  value<-length(v1)
  index<-1
  somma<-0
  while (value>=1) {
    if(index%%2==0){
      v1[value]<-v1[value]*2
      if(v1[value]>9){
        v1[value]<-v1[value]-9
      }
    }
    somma<-somma+v1[value]
    value<-value-1
    index<-index+1
  }
  if(somma%%10==0){
    return(TRUE)
  }else{
    return(FALSE)
  }
}
```

Issues:
- Hardcodes test data `v1<-c(6,3,4,8,7)` inside function, ignoring input
- Algorithm logic is correct otherwise

---

# Final Grade Summary

| Question | Points Earned | Max Points |
|----------|---------------|------------|
| Q0: Name | 2 | 2 |
| Q1: R Basics | 11 | 13 |
| Q2: Data/Logic | 18 | 20 |
| Q3: Simulation | 13 | 15 |
| Q4: Functions | 14 | 25 |
| Q5: Luhn Algorithm | 21 | 25 |
| **TOTAL** | **79** | **100** |
