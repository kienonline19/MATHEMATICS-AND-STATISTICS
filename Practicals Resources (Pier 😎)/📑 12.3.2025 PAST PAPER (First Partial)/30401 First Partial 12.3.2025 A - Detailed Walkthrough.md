# 30401 First Partial (12.3.2025, Version A) — Detailed Walkthrough (Rewritten Formulas)

This document rewrites the previous walkthrough with cleaner and more explicit mathematical notation.

> Environment note: local `R` is not installed in this container, so exact dataset-only numeric outputs (Exercise 1 and Exercise 2f on `Employee.RData`) are explained with full methodology and reproducible R commands.

---

## Exercise 1 (Dataset: `Employee.RData`)

### a) Plot to compare salary by department
Use side-by-side boxplots:

```r
boxplot(Employee$Salary ~ Employee$Department)
```

This is appropriate because each department gets a full distribution summary:
- median (center line),
- interquartile range (box),
- tails/whiskers,
- potential outliers.

If medians and boxes are clearly separated, salary appears associated with department.

---

### b) Mean and median: rigorous definitions
Let the sample be $x_1, x_2, \ldots, x_n$.

**Sample mean**

$$
\bar{x} = \frac{1}{n}\sum_{i=1}^{n}x_i.
$$

**Sample median** (order-statistic definition)
1. Sort values: $x_{(1)} \le x_{(2)} \le \cdots \le x_{(n)}$.
2. If $n$ is odd, $\mathrm{Med}=x_{((n+1)/2)}$.
3. If \(n\) is even, a standard convention is

$$
\mathrm{Med}=\frac{x_{(n/2)}+x_{(n/2+1)}}{2}.
$$

Equivalent quantile-style characterization:

$$
\left|\{i\in\{1,\ldots,n\}:x_i\le m\}\right|\ge \frac n2
\quad\text{and}\quad
\left|\{i\in\{1,\ldots,n\}:x_i\ge m\}\right|\ge \frac n2.
$$

Advantages:
- mean uses all values and is algebraically convenient,
- median is robust to extreme salaries.

---

### c) Mean salary by department

```r
tapply(Employee$Salary, Employee$Department, mean)
```

Then compare departments by:
1. ranking means,
2. checking magnitude of mean gaps (practical relevance).

---

### d) Top 15% earners in HR
Top 15% means salaries above the 85th percentile in HR.

```r
quantile(Employee$Salary[Employee$Department=="HR"], c(0.85, 1))
```

Interpretation:
- lower bound = $Q_{0.85}$ in HR,
- upper bound = max HR salary.

Hence the interval $[Q_{0.85}, \max]$ gives the range for top-15%-paid HR employees.

---

### e) Department-role composition

```r
tab <- table(Employee$Department, Employee$Role)
prop.table(tab, 1)
```

`prop.table(tab, 1)` gives conditional proportions

$$
\widehat P(\text{Role}=r\mid \text{Department}=d)
=\frac{n_{d,r}}{n_{d,\cdot}}.
$$

Each department row sums to 1.

---

## Exercise 2 (Two salary samples: raw dataset + grouped table)

Grouped sample (Con\$ult table):
| Class index | Salary class | Frequency | Width | Midpoint |
|---:|:---:|---:|---:|---:|
| 1 | \([1000,1500)\) | 85 | 500 | 1250 |
| 2 | \([1500,2000)\) | 45 | 500 | 1750 |
| 3 | \([2000,3000)\) | 10 | 1000 | 2500 |
| 4 | \([3000,5000)\) | 10 | 2000 | 4000 |
| 5 | \([5000,8000]\) | 50 | 3000 | 6500 |

Total size:

$$
n = \sum_{i=1}^5 f_i = 200.
$$

### a) Five-number summary from dataset sample

```r
b <- boxplot(Employee$Salary)
b$stats
quantile(Employee$Salary, c(0.25, 0.5, 0.75))
```

This yields minimum, \(Q_1\), median, \(Q_3\), and maximum.

> Practical note: `boxplot.stats` and `quantile` can differ slightly in edge cases due to algorithmic conventions; for exam-style work, report the method you used.

---

### b) Relative frequencies and histogram densities (grouped sample)
Let class width of class $i$ be $w_i$. Here:

$$
(w_1,w_2,w_3,w_4,w_5)=(500,500,1000,2000,3000).
$$

Relative frequencies:

$$
p_i = \frac{f_i}{n}.
$$

Numerically:

$$
(p_1,p_2,p_3,p_4,p_5)=(0.425,0.225,0.05,0.05,0.25).
$$

Histogram density heights (so class area = probability):

$$
d_i = \frac{f_i}{n\,w_i}=\frac{p_i}{w_i}.
$$

Numerically:

$$
(d_1,d_2,d_3,d_4,d_5)=
(0.00085,0.00045,0.00005,0.000025,0.00008333\ldots).
$$

---

### c) Quartiles for grouped data (linear interpolation)
For grouped data, a quantile at cumulative probability $q$ inside class $j$ is approximated by

$$
Q_q \approx L_j + \frac{q-F_{j-1}}{d_j},
$$

where:
- $L_j$ = lower class boundary,
- $F_{j-1}$ = cumulative probability before class $j$,
- $d_j$ = class density.

#### First quartile \(Q_1=Q_{0.25}\)
Since \(0.25 < 0.425\), \(Q_1\) is in class 1, so:

$$
Q_1 \approx 1000 + \frac{0.25-0}{0.00085}
= 1000 + 294.1176
= 1294.1176.
$$

#### Median \(Q_{0.50}\)
Cumulative after class 1 is \(0.425\), after class 2 is \(0.650\), so median is in class 2:

$$
Q_{0.50} \approx 1500 + \frac{0.50-0.425}{0.00045}
=1500+166.6667
=1666.6667.
$$

#### Third quartile $Q_3=Q_{0.75}$
Cumulative reaches exactly \(0.75\) at the end of class 4, hence

$$
Q_3=5000.
$$

---

### d) Mean and standard deviation (grouped approximation)
Use class midpoints:

$$
m_i=\frac{a_i+b_i}{2}
\Rightarrow
(m_1,m_2,m_3,m_4,m_5)=(1250,1750,2500,4000,6500).
$$

Grouped mean:

$$
\bar x_{\text{grp}}=\frac{\sum_{i=1}^5 m_i f_i}{n}
=\frac{575000}{200}=2875.
$$

Grouped SD using denominator \(n\) (same style as previous script):

$$
s_{\text{grp},n}
=\sqrt{\frac{1}{n}\sum_{i=1}^5 f_i(m_i-\bar x_{\text{grp}})^2}
\approx 2182.32.
$$

If sample SD is required (denominator \(n-1\)):

$$
s_{\text{grp},n-1}
=\sqrt{\frac{1}{n-1}\sum_{i=1}^5 f_i(m_i-\bar x_{\text{grp}})^2}
\approx 2187.79.
$$

Dataset values from raw data:

```r
mean(Employee$Salary)
sd(Employee$Salary)
```

---

### e) Compare the two salary distributions
Use quartiles, mean, and SD to comment on:
1. **Centrality**: compare median and mean levels.
2. **Dispersion**: compare IQR and SD.
3. **Shape**: if mean \(>\) median with strong upper tail, right-skew is indicated.
4. **Top-vs-bottom disparity**: compare upper-tail reach (e.g., \(Q_3\), max, outliers) against lower quartile.

For grouped sample specifically:
- $\bar x_{\text{grp}}=2875$ is much larger than median $\approx1666.67$, suggesting right-skew.
- $Q_3=5000$ while $Q_1\approx1294.12$, so the central 50% already spans a wide interval.
- A large mass in the top class \([5000,8000]\) (25%) indicates substantial upper-tail weight.

---

### f) Upper-outlier threshold in dataset sample
Tukey upper fence:

$$
\text{IQR}=Q_3-Q_1,
\qquad
\text{Upper Fence}=Q_3+1.5\,\text{IQR}.
$$

Equivalent expanded form:

$$
\text{Upper Fence}=Q_3+1.5(Q_3-Q_1)=2.5Q_3-1.5Q_1.
$$

R commands:

```r
Q  <- quantile(Employee$Salary, c(0.25, 0.5, 0.75))
UL <- Q[3] + 1.5*(Q[3]-Q[1])
Employee$Salary[Employee$Salary > UL]
Employee$Role[Employee$Salary > UL]
Employee$Department[Employee$Salary > UL]
```

Report: threshold, count above threshold, salary list, department list.

---

### g) Percentage above a threshold in grouped sample
For a threshold \(T\) inside class 5 \([5000,8000]\), using uniform-within-class approximation:

$$
P(X>T) \approx (8000-T)\,d_5,
\quad d_5=\frac{50}{200\cdot3000}=\frac{1}{12000}.
$$

If \(T=6500\):

$$
P(X>6500)\approx (8000-6500)\cdot\frac1{12000}
=\frac{1500}{12000}=0.125=12.5\%.
$$

For \(T=5000\):

$$
P(X>5000)=\frac{50}{200}=0.25=25\%.
$$

Exactness:
- \(X>5000\): exact from class frequency.
- \(X>6500\): approximate (assumes flat density within [5000,8000]).

---

## Exercise 3 (Venn diagram logic)

The exact symbolic lines in the PDF image layer were not fully extractable here.
To still solve this rigorously, use the following **universal checking workflow** for each statement:
1. Convert any set statement into implication form (e.g., $x\in B\cap C \Rightarrow x\in C$).
2. For probability equalities, rewrite both sides using

$$
P(A\cup B)=P(A)+P(B)-P(A\cap B),\qquad
P(A\setminus B)=P(A)-P(A\cap B).
$$

3. Check whether the claim requires containment (e.g., $P(B\cap C)=P(C)\iff C\subseteq B$).
4. If claim is “in general,” test with a counterexample; one valid counterexample is enough to conclude FALSE.

---

## Exercise 4 (Poisson model)

Let

$$
X\sim\text{Poisson}(\lambda),\quad \lambda=20.
$$

PMF and CDF formulas:

$$
P(X=k)=e^{-\lambda}\frac{\lambda^k}{k!},
\qquad
P(X\le t)=\sum_{k=0}^{t} e^{-\lambda}\frac{\lambda^k}{k!}.
$$

### a) 90% typical range
Use discrete quantiles

$$
q_{0.10}=\min\{k:F_X(k)\ge0.10\},
\qquad
q_{0.90}=\min\{k:F_X(k)\ge0.90\}.
$$

Numerically: \(q_{0.10}=14\), \(q_{0.90}=26\).
So a central 90% typical count is about **14 to 26**.

---

### b) Probability of 30 or more

$$
P(X\ge30)=1-P(X\le29)
=1-\sum_{k=0}^{29} e^{-20}\frac{20^k}{k!}
\approx 0.01347.
$$

So daily disruption probability is about **1.35%**.

---

### c) Over 200 working days
Let

$$
Y\sim\text{Binomial}(n=200,p),\quad p=P(X\ge30)\approx0.01347.
$$

Then

$$
E[Y]=np=200\cdot0.01347\approx2.695.
$$

and

$$
P(Y\le10)=\sum_{k=0}^{10}\binom{200}{k}p^k(1-p)^{200-k}
\approx0.99990.
$$

---

### d) Weather-mixture revision
Given:
- Rain (probability 0.2): $X_1\sim\text{Poisson}(30)$,
- No rain (probability 0.8): $X_2\sim\text{Poisson}(\mu_2)$,
- Overall mean: \(E[X]=20\).

By total expectation:

$$
E[X]=0.2\,E[X_1]+0.8\,E[X_2]
=0.2\cdot30+0.8\mu_2=20,
$$

hence

$$
\mu_2=17.5.
$$

Mixture PMF:

$$
P(X=k)=0.2\,P(X_1=k)+0.8\,P(X_2=k)
=0.2\,e^{-30}\frac{30^k}{k!}+0.8\,e^{-17.5}\frac{17.5^k}{k!}.
$$

Computed outputs:
1. $\mu_2=17.5$.
2. 90% typical range approximately **13 to 30**.
3. $P(X\ge 30)\approx 0.10812$ (about **10.81%**).
4. Over 200 days, with $Y\sim\text{Binomial}(200,0.10812)$:
   - $E[Y]\approx21.62$,
   - $P(Y\le10)\approx0.00298$.

Interpretation: weather heterogeneity substantially increases tail risk versus the simple Poisson(20) model.
