# Study Plan for Mathematics & Statistics (30401)

## Exam Date: March 18, 2026 | Study Period: March 7 - 17, 2026 (11 days)

---

## Course Topics Overview

Based on the lecture slides, practicals, and past exams, the course covers:

| Area | Topics | Weight in Exams |
|------|--------|-----------------|
| **Foundations** | Variable types, data structures, R basics | Low-Medium |
| **Descriptive Statistics** | Mean, median, quartiles, IQR, variance, SD, boxplots, histograms | **High** |
| **Probability** | Set operations, Venn diagrams, basic probability rules | Medium |
| **Distributions** | Poisson, Binomial, Normal, Weibull | **High** |
| **Inferential Statistics** | Hypothesis testing (Z-test, t-test), confidence intervals | **High** |
| **Bivariate Analysis** | Contingency tables, correlation, proportions | Medium |
| **R Programming** | Data manipulation, plotting, statistical functions | **High** (practical component) |

---

## Day-by-Day Study Plan

### Phase 1: Foundations & Descriptive Statistics (Days 1-3)

---

### Day 1 - Saturday, March 7: Variables, Data Types & R Basics

**Goal:** Solidify the foundations — understand data classification and basic R operations.

**Study Materials:**
- [ ] Read lecture slides: `Om's lecture slides/Class1_5_2.pdf` (Intro to Statistics)
- [ ] Read lecture slides: `Om's lecture slides/Class2_6_2.pdf` (Data Types & Variables)
- [ ] Work through: `test/day1/day1.ipynb` (variable classification notebook)
- [ ] Practice: `test/day1/var.md` — complete all 10 variable classification exercises
- [ ] Review: `Practicals Resources (Pier 😎)/Episode 1 - Intro to R and R Studio 💻/Episode I Script, Part I(1).R`
- [ ] Review: `Practicals Resources (Pier 😎)/Episode 1 - Intro to R and R Studio 💻/Episode I Script, Part II(1).R`

**Key Concepts to Master:**
- Quantitative vs. Categorical variables
- Nominal vs. Ordinal scales
- Continuous vs. Discrete variables
- R vectors, matrices, dataframes, factors
- Subsetting and filtering data in R

**Self-Check:** Can you look at any dataset and immediately classify every variable by type?

---

### Day 2 - Sunday, March 8: Descriptive Statistics — Central Tendency & Dispersion

**Goal:** Master all measures of central tendency and dispersion — this is heavily tested.

**Study Materials:**
- [ ] Read lecture slides: `Om's lecture slides/Class3_12_02.pdf` (Central Tendency)
- [ ] Read lecture slides: `Om's lecture slides/Class4_13_02.pdf` (Dispersion & Distribution Shape)
- [ ] Study: `Practicals Resources (Pier 😎)/Episode 2 - Practice on Descriptive Statistics 📈/Episode 2 Recap.pdf`
- [ ] Run and understand: `Practicals Resources (Pier 😎)/Episode 2 - Practice on Descriptive Statistics 📈/Episode 2 Script.R`
- [ ] Attempt: `Practicals Resources (Pier 😎)/Episode 2 - Practice on Descriptive Statistics 📈/Episode 2 Exercise Sheet.pdf`
- [ ] Check answers: `Episode 2 Exercise Sheet with Numerical Solutions.pdf`

**Key Concepts to Master:**
- Mean, Median, Mode — when to use each
- Variance & Standard Deviation (population vs. sample formulas)
- Quartiles (Q1, Q2, Q3), Percentiles, IQR
- Range, Coefficient of Variation
- Frequency distributions and density calculations
- R functions: `mean()`, `median()`, `var()`, `sd()`, `quantile()`, `summary()`

**Self-Check:** Given a dataset, can you compute all descriptive statistics by hand AND in R?

---

### Day 3 - Monday, March 9: Boxplots, Histograms & Data Visualization

**Goal:** Master graphical representations — boxplots appear in every exam.

**Study Materials:**
- [ ] Work through: `test/day3/main.ipynb` (comprehensive boxplot tutorial)
- [ ] Practice with: `test/day3/Iris.csv` dataset
- [ ] Review: `Practicals Resources (Pier 😎)/Episode 1 - Intro to R and R Studio 💻/ggplot2_example.R`
- [ ] Study Exercise 3: `Practicals Resources (Pier 😎)/Episode 2 - Practice on Descriptive Statistics 📈/Exercise 3, Episode 2 Solution.R`

**Key Concepts to Master:**
- Five-number summary (min, Q1, median, Q3, max)
- How to draw and interpret boxplots
- Outlier detection: values beyond Q1 - 1.5*IQR or Q3 + 1.5*IQR
- Whisker endpoints (NOT min/max — they stop at the last non-outlier)
- Skewness detection from boxplots (left-skew, right-skew, symmetric)
- Mean vs. Median position and what it tells about skewness
- Histogram construction: choosing bins, calculating densities
- Grouped data: linear interpolation for percentiles
- R functions: `boxplot()`, `hist()`, `tapply()`

**Self-Check:** Can you draw a boxplot by hand from raw data? Can you identify skewness?

---

### Phase 2: Probability & Distributions (Days 4-6)

---

### Day 4 - Tuesday, March 10: Probability Fundamentals & Set Operations

**Goal:** Build a solid probability foundation — needed for all distribution problems.

**Study Materials:**
- [ ] Read lecture slides: `Om's lecture slides/Class5_18_02.pdf` (Probability Fundamentals)
- [ ] Review Venn diagram problems from the First Partial exam walkthrough:
  `Practicals Resources (Pier 😎)/📑 12.3.2025 PAST PAPER (First Partial)/30401 First Partial 12.3.2025 A - Detailed Walkthrough.md`

**Key Concepts to Master:**
- Sample space, events, outcomes
- Union, intersection, complement
- Venn diagram logic and calculations
- Addition rule: P(A ∪ B) = P(A) + P(B) - P(A ∩ B)
- Conditional probability: P(A|B) = P(A ∩ B) / P(B)
- Independence: P(A ∩ B) = P(A) × P(B)
- Bayes' theorem
- Contingency tables and joint/marginal/conditional probabilities

**Self-Check:** Can you solve Venn diagram problems with 2-3 sets? Can you compute conditional probabilities from a contingency table?

---

### Day 5 - Wednesday, March 11: Discrete Distributions (Poisson & Binomial)

**Goal:** Master discrete distributions — Poisson and Binomial appear frequently in exams.

**Study Materials:**
- [ ] Read lecture slides: `Om's lecture slides/Class6_20_02.pdf` (Discrete Distributions)
- [ ] Study Poisson problems from First Partial:
  `Practicals Resources (Pier 😎)/📑 12.3.2025 PAST PAPER (First Partial)/30401 First Partial Exam Solution Script 12.3.2025.R` (Poisson section)
- [ ] Study Binomial/Poisson from General Exam:
  `Practicals Resources (Pier 😎)/📑26.5.2025 PAST PAPER (General and Second Partial)/30401 Exam Solution Script 25.5.2025.R`

**Key Concepts to Master:**
- **Binomial Distribution:**
  - When to use: fixed n trials, two outcomes, constant p, independent
  - Formula: P(X = k) = C(n,k) × p^k × (1-p)^(n-k)
  - Mean = np, Variance = np(1-p)
  - R: `dbinom()`, `pbinom()`, `qbinom()`
- **Poisson Distribution:**
  - When to use: counting events in a fixed interval, rare events
  - Formula: P(X = k) = (λ^k × e^(-λ)) / k!
  - Mean = Variance = λ
  - R: `dpois()`, `ppois()`, `qpois()`
- Computing P(X ≤ k), P(X > k), P(X = k) for both distributions

**Self-Check:** Can you identify whether a problem requires Binomial or Poisson? Can you compute probabilities by hand and verify in R?

---

### Day 6 - Thursday, March 12: Continuous Distributions (Normal & Weibull)

**Goal:** Master the Normal distribution — it's fundamental to hypothesis testing.

**Study Materials:**
- [ ] Read lecture slides: `Om's lecture slides/Class7_26_02.pdf` (Continuous Distributions)
- [ ] Study Normal distribution problems from General Exam solution script:
  `Practicals Resources (Pier 😎)/📑26.5.2025 PAST PAPER (General and Second Partial)/30401 Exam Solution Script 25.5.2025.R`

**Key Concepts to Master:**
- **Normal Distribution:**
  - Properties: symmetric, bell-shaped, defined by μ and σ
  - Standard Normal (Z): μ = 0, σ = 1
  - Standardization: Z = (X - μ) / σ
  - 68-95-99.7 rule
  - R: `dnorm()`, `pnorm()`, `qnorm()`, `rnorm()`
  - Finding probabilities: P(X < a), P(a < X < b)
  - Finding quantiles (inverse problem)
- **Weibull Distribution:**
  - Parameters: shape (k) and scale (λ)
  - Applications in reliability/survival analysis
  - Maximum Likelihood Estimation (MLE) basics
  - R: `dweibull()`, `pweibull()`

**Self-Check:** Can you standardize values and use Z-tables? Can you find P(X > 5) for a Normal distribution?

---

### Phase 3: Inferential Statistics & Advanced Topics (Days 7-8)

---

### Day 7 - Friday, March 13: Hypothesis Testing & Confidence Intervals

**Goal:** Understand the logic and mechanics of hypothesis testing.

**Study Materials:**
- [ ] Read lecture slides: `Om's lecture slides/Class8_27_02.pdf` (Inferential Statistics & Hypothesis Testing)
- [ ] Study hypothesis testing problems from General Exam solutions:
  `Practicals Resources (Pier 😎)/📑26.5.2025 PAST PAPER (General and Second Partial)/30401 Exam Solutions 26.5.2025.pdf`
- [ ] Review R implementation in the exam solution script (Z-test and t-test sections)

**Key Concepts to Master:**
- Null hypothesis (H₀) vs. Alternative hypothesis (H₁)
- One-tailed vs. Two-tailed tests
- Test statistics: Z-statistic and t-statistic
- p-value interpretation
- Significance levels (α = 0.05, 0.01)
- Type I and Type II errors
- Confidence intervals: point estimate ± margin of error
- When to use Z-test vs. t-test (known vs. unknown σ, sample size)
- R: `t.test()`, `prop.test()`

**Self-Check:** Given a problem, can you formulate hypotheses, compute the test statistic, and make a decision?

---

### Day 8 - Saturday, March 14: Correlation, Contingency Tables & MLE

**Goal:** Master bivariate analysis and estimation methods.

**Study Materials:**
- [ ] Study correlation and contingency table problems from General Exam:
  `Practicals Resources (Pier 😎)/📑26.5.2025 PAST PAPER (General and Second Partial)/30401 Exam Solution Script 25.5.2025.R`
- [ ] Review contingency table problems from First Partial:
  `Practicals Resources (Pier 😎)/📑 12.3.2025 PAST PAPER (First Partial)/30401 First Partial Exam Solution Script 12.3.2025.R`

**Key Concepts to Master:**
- **Correlation:**
  - Pearson correlation coefficient (r): formula and interpretation
  - r ranges from -1 to +1
  - Correlation ≠ causation
  - R: `cor()`, `cor.test()`
- **Contingency Tables:**
  - Joint, marginal, and conditional distributions
  - Row and column proportions
  - R: `table()`, `prop.table()`, `margin.table()`
- **Maximum Likelihood Estimation:**
  - Concept: find parameter values that maximize the likelihood
  - Log-likelihood function
  - Application to distribution fitting

**Self-Check:** Can you build a contingency table and compute all types of proportions? Can you interpret a correlation coefficient?

---

### Phase 4: Exam Practice & Review (Days 9-11)

---

### Day 9 - Sunday, March 15: First Partial Exam Practice

**Goal:** Simulate exam conditions with the First Partial past paper.

**Study Plan:**
- [ ] **Morning — Timed Practice (90 min):** Attempt the First Partial exam WITHOUT looking at solutions:
  `Practicals Resources (Pier 😎)/📑 12.3.2025 PAST PAPER (First Partial)/30401 First Partial 12.3.2025 A.pdf`
- [ ] **Afternoon — Review:** Compare your answers with the solutions:
  `30401 First Partial Solution A.pdf`
- [ ] **Study the detailed walkthrough** for any questions you got wrong:
  `30401 First Partial 12.3.2025 A - Detailed Walkthrough.md`
- [ ] **Evening — Attempt Version B:**
  `30401 First Partial 12.3.2025 B.pdf` → then check with `30401 First Partial Solution B.pdf`
- [ ] **Make a list** of all mistakes and weak areas

**Topics Tested in First Partial:**
- Boxplot analysis and interpretation
- Mean, median, percentile calculations
- Two-way contingency tables
- Histogram density calculations
- Linear interpolation for grouped data
- Venn diagram set logic
- Poisson distribution

---

### Day 10 - Monday, March 16: General & Second Partial Exam Practice

**Goal:** Simulate exam conditions with the General/Second Partial past paper.

**Study Plan:**
- [ ] **Morning — Timed Practice (120 min):** Attempt the General Exam:
  `Practicals Resources (Pier 😎)/📑26.5.2025 PAST PAPER (General and Second Partial)/Exam General 30401 26.5.2025 A.pdf`
- [ ] **Afternoon — Review:** Compare answers with:
  `30401 Exam Solutions 26.5.2025.pdf`
- [ ] **Run the R solution script** to verify computations:
  `30401 Exam Solution Script 25.5.2025.R`
- [ ] **Evening — Attempt the Second Partial:**
  `Exam Partial 30401 26.5.2025 A.pdf`
- [ ] **Update your weak areas list** — identify recurring mistakes

**Additional Topics Tested:**
- Normal distribution applications
- Binomial and Poisson distributions
- Correlation analysis
- Maximum likelihood estimation
- Weibull distribution
- Hypothesis testing (Z and t tests)

---

### Day 11 - Tuesday, March 17: Final Review & Weak Areas

**Goal:** Targeted review of weak areas and final confidence boost.

**Study Plan:**
- [ ] **Morning — Review weak areas** identified on Days 9-10
- [ ] **Re-do any exam questions** you got wrong
- [ ] **Create a formula cheat sheet** (for memorization, not for use in exam):

**Formula Quick Reference to Memorize:**

| Formula | Expression |
|---------|-----------|
| Mean | x̄ = Σxᵢ / n |
| Variance (sample) | s² = Σ(xᵢ - x̄)² / (n-1) |
| Standard Deviation | s = √(s²) |
| IQR | IQR = Q3 - Q1 |
| Outlier bounds | [Q1 - 1.5×IQR, Q3 + 1.5×IQR] |
| Z-score | Z = (X - μ) / σ |
| Binomial P(X=k) | C(n,k) × pᵏ × (1-p)ⁿ⁻ᵏ |
| Poisson P(X=k) | (λᵏ × e⁻λ) / k! |
| Confidence Interval | x̄ ± z_(α/2) × σ/√n |
| Correlation | r = Σ(xᵢ-x̄)(yᵢ-ȳ) / √[Σ(xᵢ-x̄)²×Σ(yᵢ-ȳ)²] |

- [ ] **Afternoon — Quick re-attempt** of Version B exams (skim through, solve key problems)
- [ ] **Evening — Light review only.** Look over the formula sheet. Get a good night's sleep.

---

### Day 12 - Wednesday, March 18: EXAM DAY

- Review your formula sheet one last time in the morning
- Arrive early, stay calm, and trust your preparation
- **Exam strategy:**
  1. Read ALL questions first before answering
  2. Start with questions you're most confident about
  3. Show all work — partial credit matters
  4. Double-check calculations, especially for quartile and probability questions
  5. For R questions: write clean, commented code
  6. Watch out for common traps: population vs. sample variance, P(X ≤ k) vs. P(X < k)

---

## R Functions Cheat Sheet

```r
# === Descriptive Statistics ===
mean(x)                    # Arithmetic mean
median(x)                  # Median
var(x)                     # Sample variance (n-1)
sd(x)                      # Sample standard deviation
quantile(x, 0.25)          # First quartile
quantile(x, c(0.25, 0.75)) # Q1 and Q3
IQR(x)                     # Interquartile range
summary(x)                 # Five-number summary + mean
range(x)                   # Min and max

# === Tables & Proportions ===
table(x)                   # Frequency table
table(x, y)                # Contingency table
prop.table(t)              # Joint proportions
prop.table(t, 1)           # Row proportions
prop.table(t, 2)           # Column proportions
margin.table(t, 1)         # Row marginals
margin.table(t, 2)         # Column marginals
tapply(x, group, FUN)      # Apply function by group

# === Plotting ===
boxplot(x)                 # Simple boxplot
boxplot(x ~ group)         # Grouped boxplot
hist(x)                    # Histogram
hist(x, breaks=..., freq=FALSE) # Density histogram
barplot(table(x))          # Bar chart
plot(x, y)                 # Scatterplot

# === Distributions ===
# Binomial: dbinom(k,n,p), pbinom(k,n,p), qbinom(q,n,p)
# Poisson:  dpois(k,lambda), ppois(k,lambda), qpois(q,lambda)
# Normal:   dnorm(x,mu,sd), pnorm(x,mu,sd), qnorm(q,mu,sd)
# Weibull:  dweibull(x,shape,scale), pweibull(x,shape,scale)

# === Hypothesis Testing ===
t.test(x, mu=...)          # One-sample t-test
t.test(x, y)               # Two-sample t-test
cor(x, y)                  # Correlation coefficient
cor.test(x, y)             # Correlation test with p-value
```

---

## Priority Ranking (What to Focus On If Short on Time)

If you're running behind, prioritize in this order:

1. **Boxplots & Descriptive Statistics** — appear in EVERY exam
2. **Probability Distributions** (Poisson, Binomial, Normal) — always tested
3. **Contingency Tables & Proportions** — frequent exam topic
4. **Hypothesis Testing** — key for General exam
5. **R Programming Skills** — needed to verify all calculations
6. **Venn Diagrams & Set Logic** — typically 1 question
7. **MLE & Weibull** — advanced topics, lower priority

---

## Weekly Schedule Summary

| Day | Date | Focus | Hours |
|-----|------|-------|-------|
| 1 | Sat Mar 7 | Variables, Data Types, R Basics | 4-5h |
| 2 | Sun Mar 8 | Descriptive Statistics (measures) | 4-5h |
| 3 | Mon Mar 9 | Boxplots, Histograms, Visualization | 3-4h |
| 4 | Tue Mar 10 | Probability & Set Operations | 3-4h |
| 5 | Wed Mar 11 | Discrete Distributions (Poisson, Binomial) | 4-5h |
| 6 | Thu Mar 12 | Continuous Distributions (Normal, Weibull) | 4-5h |
| 7 | Fri Mar 13 | Hypothesis Testing & Confidence Intervals | 4-5h |
| 8 | Sat Mar 14 | Correlation, Contingency Tables, MLE | 3-4h |
| 9 | Sun Mar 15 | First Partial Exam Practice (timed) | 5-6h |
| 10 | Mon Mar 16 | General Exam Practice (timed) | 5-6h |
| 11 | Tue Mar 17 | Final Review & Weak Areas | 3-4h |
| **12** | **Wed Mar 18** | **EXAM DAY** | - |

**Total estimated study time: ~43-53 hours**

---

*Good luck! Consistent daily study with active practice (not just reading) is the key to success. Always work through problems yourself before checking solutions.*
