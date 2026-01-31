# Informatica 2 - Exam Grading Report
## Exam Date: 2025-09-04
## Instructors: Peter Gruber and Paul Schneider

---

## Files in This Repository

```
assignment_info1/
├── README.md                       # This file - grading report and documentation
├── grades_summary.csv              # All grades in CSV format (21 students)
├── Informatica_retake_2026-01.xls  # Course enrollment roster
├── rbakkexam2026_spring.R          # Original exam template
├── Eudata.csv                      # Dataset used in Q2
├── infosheet.pdf                   # Exam info sheet with equations
├── assignment.txt                  # Raw concatenated submissions
├── Guano_Anderson_Esame_2026.pdf   # Sample exam PDF
├── submissions/                    # Individual student R files (16 files)
│   ├── Anna_Bonera.R
│   ├── Assiya_Mokabbal.R
│   ├── Damiano_Spiatta.R
│   ├── Eleonora_Moroni.R
│   ├── Erica_Trofimov.R
│   ├── Filippo_Manachino.R
│   ├── Guano_Anderson.R
│   ├── Leonardo_Zanga.R
│   ├── Lisa_Dellerba.R
│   ├── Ludovico_Martinelli.R
│   ├── Malak_El_Fatih.R
│   ├── Matteo_Gangi.R
│   ├── Matteo_Zucchi.R
│   ├── Nicholas_Serantoni.R
│   ├── Samuel_Boccomino.R
│   └── Stefano_Laureti.R
└── feedback/                       # Individual feedback files (16 files)
    ├── Anna_Bonera.md
    ├── Assiya_Mokabbal.md
    ├── Damiano_Spiatta.md
    ├── Eleonora_Moroni.md
    ├── Erica_Trofimov.md
    ├── Filippo_Manachino.md
    ├── Guano_Anderson.md
    ├── Leonardo_Zanga.md
    ├── Lisa_Dellerba.md
    ├── Ludovico_Martinelli.md
    ├── Malak_El_Fatih.md
    ├── Matteo_Gangi.md
    ├── Matteo_Zucchi.md
    ├── Nicholas_Serantoni.md
    ├── Samuel_Boccomino.md
    └── Stefano_Laureti.md
```

---

## Exam Structure

| Question | Topic | Max Points |
|----------|-------|------------|
| Q0 | Name identification | 2 |
| Q1 | R Basics (vectors, matrices, calculations) | 13 |
| Q2 | Data and Logical Conditions (Eudata.csv) | 20 |
| Q3 | Simulation and Probability | 15 |
| Q4 | Functions and Optimization | 25 |
| Q5 | Luhn Algorithm Implementation | 25 |
| **Total** | | **100** |

---

## Grading Criteria

### Q0: Name (2 points)
- Full credit for providing name as a comment in the R file

### Q1: R Basics (13 points)
| Sub-question | Points | Description |
|--------------|--------|-------------|
| 1.1 | 2 | Create vector v1 using `seq()` |
| 1.2 | 2 | Create vector v2 using `seq()` |
| 1.3 | 2 | Create matrix M (5x30) |
| 1.4 | 1 | Print first row of M |
| 1.5 | 2 | Display last element of v1 dynamically |
| 1.6 | 2 | Perform calculations with `log10()` |
| 1.7 | 1 | Create variable u = 10^(-5) |
| 1.8 | 1 | Explain case sensitivity |

### Q2: Data and Logical Conditions (20 points)
| Sub-question | Points | Description |
|--------------|--------|-------------|
| 2.1 | 2 | Count countries (`nrow()`) |
| 2.2 | 2 | Total EU population |
| 2.3 | 2 | Min/max area populations (`which.min/max`) |
| 2.4 | 2 | Count Eurozone members |
| 2.5 | 2 | Total Eurozone GDP |
| 2.6 | 3 | GDP per capita (EU, Eurozone, non-Eurozone) |
| 2.7 | 2 | EU founding year (`min(Accession)`) |
| 2.8 | 2 | Count founding members |
| 2.9 | 2 | Remove UK from dataframe |
| 2.10 | 2 | Update Bulgaria's Eurozone status |

### Q3: Simulation and Probability (15 points)
| Sub-question | Points | Description |
|--------------|--------|-------------|
| 3.1 | 2 | Single dice roll |
| 3.2 | 2 | 1000 dice rolls in vector k |
| 3.3 | 2 | Probability of 4 or 5 |
| 3.4 | 3 | z = 2k - m: mean and variance |
| 3.5 | 2 | Stock returns simulation |
| 3.6 | 4 | Negative return probability (empirical + theoretical) |

### Q4: Functions and Optimization (25 points)
| Sub-question | Points | Description |
|--------------|--------|-------------|
| 4.1 | 3 | Define f(x) = x^2 |
| 4.2 | 2 | Calculate f(1) |
| 4.3 | 4 | Plot function on [-2, 2] |
| 4.4 | 6 | Find minimum using `optim()` |
| 4.5 | 6 | Implement grid search (N=100) |
| 4.6 | 4 | Explain difference between methods |

### Q5: Luhn Algorithm (25 points)
- Full implementation of checkLuhn function
- Correct handling of right-to-left processing
- Proper doubling of even-position digits
- Subtraction of 9 when digit > 9
- Modulo 10 check for validity

---

## Class Statistics

### Enrollment Summary

| Status | Count |
|--------|-------|
| Total Enrolled | 21 |
| Submitted Exam | 16 |
| No Submission | 2 |
| Retired | 3 |

### Overall Performance (Submitted Students Only)

| Metric | Value |
|--------|-------|
| Number of Submissions | 16 |
| Mean Score | 59.6 / 100 |
| Median Score | 51.25 / 100 |
| Standard Deviation | 17.0 |
| Minimum Score | 31 / 100 |
| Maximum Score | 85 / 100 |
| Pass Rate (>= 50) | 56% (9/16) |

### Score Distribution

```
30-39:  ██ (2 students)
40-49:  ████ (4 students)
50-59:  ███ (3 students)
60-69:  █ (1 student)
70-79:  ████ (4 students)
80-89:  ██ (2 students)
90-100: (0 students)
```

### Performance by Question

| Question | Max | Mean | Median | % of Max |
|----------|-----|------|--------|----------|
| Q0: Name | 2 | 2.0 | 2 | 100% |
| Q1: R Basics | 13 | 8.8 | 9 | 68% |
| Q2: Data/Logic | 20 | 11.2 | 12 | 56% |
| Q3: Simulation | 15 | 11.5 | 12.5 | 77% |
| Q4: Functions | 25 | 14.2 | 14 | 57% |
| Q5: Luhn | 25 | 9.8 | 3 | 39% |

### Q5 Luhn Algorithm Completion

| Status | Count | Percentage |
|--------|-------|------------|
| Full credit (25/25) | 3 | 19% |
| Partial credit (1-24) | 9 | 56% |
| Zero points | 4 | 25% |

---

## Common Errors

### Q1: R Basics

1. **Using `log()` instead of `log10()`**
   - Many students used natural logarithm instead of base-10 logarithm
   - Correct: `log10(x)` not `log(x)`

2. **Matrix dimensions incorrect**
   - Required: 5 rows x 30 columns
   - Common mistake: 10 rows or wrong sequence values

3. **Last element access**
   - Wrong: `v1[10]` (hardcoded)
   - Correct: `tail(v1, 1)` or `v1[length(v1)]`

4. **Wrong variable, right concept**
   - Students who used the right approach but wrong variable (e.g., `v2[length(v2)]` instead of `v1[length(v1)]`) receive partial credit (1/2)

5. **Matrix endpoint typos**
   - Minor typos like `seq(3, 292, 10)` instead of `seq(3, 293, 10)` that barely affect the matrix are not additionally penalized

### Q2: Data and Logical Conditions

1. **Column name variation for Eurozone**
   - Students used `Eurozone` instead of `IsEurozone`
   - Partial credit (1/2) awarded for correct logic with column name variation

2. **GDP per capita formula error**
   - Wrong: `sum(GDP/Population)` (sum of individual ratios)
   - Correct: `sum(GDP) / sum(Population)` (ratio of totals)
   - Partial credit (1/3) awarded for attempt with wrong formula

3. **EU founding year - hardcoded value**
   - Many students hardcoded `1953` in Q2.8 based on historical knowledge
   - Should derive the year from the data: `min(Eudata$Accession)` returns 1958
   - Then use that value: `sum(Eudata$Accession == min(Eudata$Accession))`

4. **CountyName column typo**
   - The CSV contains `CountyName` (typo in data)
   - Students using `CountryName` or `Country` were given credit

5. **Wrong variable, right concept (myData vs Eudata)**
   - Students who used a different variable name (e.g., `myData`) but correct logic receive partial credit (1/2)

5. **Subsetting syntax errors**
   - Missing comma: `Eudata[condition]` instead of `Eudata[condition, ]`
   - Partial credit (1/2) awarded for correct logic with minor syntax error

6. **Remove UK (Q2.9) - typos and alternatives accepted**
   - Typos in country name (e.g., "Knigdom") - full credit if UK was removed
   - Alternative codes (e.g., "GB" instead of "UK") - full credit if UK was removed
   - Hardcoded row number (e.g., `Eudata[-28,]`) - full credit if it successfully removed UK

7. **Column name typos (Q2.2, Q2.7)**
   - Typos like "Popolation" or "Accesion" - partial credit (1/2) for correct logic

### Q3: Simulation and Probability

1. **`replace=TRUE` requirement**
   - Q3.1 (single roll): `replace=TRUE` NOT required - full credit given
   - Q3.2 (1000 rolls): `replace=TRUE` IS required - `sample(1:6, 1000)` fails

2. **Variance calculation omitted**
   - Many calculated `mean(z)` but forgot `var(z)`
   - Students with mean(z) only receive 1.5/3 (half credit for missing variance)

3. **Negative returns condition reversed**
   - Wrong: `mean(stock > 0)`
   - Correct: `mean(stock < 0)`

### Q4: Functions and Optimization

1. **Minimizing negative function**
   - Some students minimized `-f(x)` which finds the MAXIMUM
   - **Update**: Partial credit (2/6) awarded for correct use of optim with incorrect approach

2. **optim result extraction**
   - Students who called `optim()` correctly but didn't extract `$par` received partial credit (5/6)
   - The optimization was performed correctly; minor extraction issue

3. **Grid search not implemented**
   - Many reused `optim()` instead of manual grid search
   - Correct approach: `x <- seq(-2, 2, length.out=100); x[which.min(f(x))]`
   - **Update**: Students who attempted grid search (even with wrong function like `grid()`) receive 0.5/6

4. **Missing explanation for Q4.6**
   - Expected: "optim uses continuous optimization; grid search evaluates discrete points"

5. **Variable name typos**
   - Typos like `ximin` instead of `xmin` receive full credit

### Q5: Luhn Algorithm

1. **Partial credit for attempts**
   - Students who attempted but didn't complete: 3/25
   - Students who showed more effort (wrong algorithm like Collatz): 5/25
   - Students with hardcoded values but correct logic: up to 18/25

2. **Right-to-left processing confusion**
   - Algorithm processes from RIGHT to LEFT
   - Need to use `rev()` or reverse indexing

3. **Position indexing errors**
   - Odd positions (1,3,5...) from right: unchanged
   - Even positions (2,4,6...) from right: double and subtract 9 if > 9

---

## Grade Summary

### Submitted Exams (Ranked)

| Rank | Student | Total |
|------|---------|-------|
| 1 | Erica Trofimov | 85 |
| 1 | Damiano Spiatta | 85 |
| 3 | Lisa Dellerba | 78 |
| 4 | Malak El Fatih | 77 |
| 5 | Samuel Boccomino | 76 |
| 6 | Guano Anderson | 70 |
| 7 | Filippo Manachino | 62 |
| 8 | Ludovico Martinelli | 51.5 |
| 9 | Matteo Zucchi | 51 |
| 9 | Stefano Laureti | 51 |
| 11 | Assiya Mokabbal | 46.5 |
| 11 | Leonardo Zanga | 46.5 |
| 13 | Nicholas Serantoni | 42.5 |
| 14 | Matteo Gangi | 42 |
| 15 | Eleonora Moroni | 38 |
| 16 | Anna Bonera | 31 |

### No Submission

| Student | Status |
|---------|--------|
| Lorenzo Pini | 0 - No submission |
| Matilde Sparviero | 0 - No submission |

### Retired

| Student | Status |
|---------|--------|
| Ambrogio Antonini | Retired |
| Gianluca Izzo | Retired |
| Leonardo Schenk | Retired |

---

## Notes

- Partial credit was awarded for correct concepts with minor syntax errors
- The `CountyName` column typo in Eudata.csv was acknowledged; students using `CountryName` or `Country` received credit
- Case sensitivity errors in R (e.g., `Sum` vs `sum`) resulted in point deductions as this is a fundamental R concept tested in Q1.8
