# Two-Week Learning Roadmap (Theory + R Practice)

This roadmap is designed to combine:
1. **Theoretical modules** from **Om's lecture slides** (`Class1_5_2.pdf` to `Class8_27_02.pdf`), and
2. **Hands-on R practice** from the practical scripts and datasets in this repository.

It is organized into **10 study days** (2 weeks, Monday-Friday style), with weekends reserved for light review/catch-up.

---

## Source Material Used

### Theory track (Om's slides)
- `Om's lecture slides/Class1_5_2.pdf`
- `Om's lecture slides/Class2_6_2.pdf`
- `Om's lecture slides/Class3_12_02.pdf`
- `Om's lecture slides/Class4_13_02.pdf`
- `Om's lecture slides/Class5_18_02.pdf`
- `Om's lecture slides/Class6_20_02.pdf`
- `Om's lecture slides/Class7_26_02.pdf`
- `Om's lecture slides/Class8_27_02.pdf`

### R track (practical and example material)
- `Practicals Resources (Pier 😎)/Episode 1 - Intro to R and R Studio 💻/Episode I Script, Part I(1).R`
- `Practicals Resources (Pier 😎)/Episode 1 - Intro to R and R Studio 💻/Episode I Script, Part II(1).R`
- `Practicals Resources (Pier 😎)/Episode 1 - Intro to R and R Studio 💻/ggplot2_example.R`
- `Practicals Resources (Pier 😎)/Episode 2 - Practice on Descriptive Statistics 📈/Episode 2 Script.R`
- `Practicals Resources (Pier 😎)/Episode 2 - Practice on Descriptive Statistics 📈/Exercise 3, Episode 2 Solution.R`
- `Practicals Resources (Pier 😎)/Episode 2 - Practice on Descriptive Statistics 📈/Episode 2, Exercise 1 Solution Script.R`
- `Practicals Resources (Pier 😎)/📑 12.3.2025 PAST PAPER (First Partial)/30401 First Partial Exam Solution Script 12.3.2025.R`
- `Practicals Resources (Pier 😎)/📑26.5.2025 PAST PAPER (General and Second Partial)/30401 Exam Solution Script 25.5.2025.R`

---

## Weekly Structure

Each study day follows this structure:
- **60-90 min Theory:** Review one lecture slide deck from Om.
- **60-90 min R Lab:** Implement or replicate concepts in R from practical scripts.
- **30 min Consolidation:** Write your own summary and one solved exercise.

Target outcome each day:
- one short concept note,
- one R script with clean comments,
- one checked output (table/chart/statistical result).

---

## Week 1 (Foundations + Descriptive Workflow)

### Day 1 - Class 1 + R Setup and Objects
- **Theory:** Study `Class1_5_2.pdf` and extract key definitions/formulas.
- **R practice:** Run Episode 1 scripts (Part I) and focus on vectors, indexing, and basic operations.
- **Deliverable:** `day1_foundations.R` reproducing all key examples with comments.

### Day 2 - Class 2 + Data Structures
- **Theory:** Study `Class2_6_2.pdf`; list assumptions and definitions introduced.
- **R practice:** Continue Episode 1 (Part II) with matrices, factors, and data frames.
- **Deliverable:** structured script that demonstrates each object type and typical pitfalls.

### Day 3 - Class 3 + Basic Visualization
- **Theory:** Study `Class3_12_02.pdf`; summarize concepts and where they apply.
- **R practice:** use `ggplot2_example.R` and recreate at least two plots from data in `AI.csv`.
- **Deliverable:** `day3_plots.R` with labeled plots and interpretation notes.

### Day 4 - Class 4 + Descriptive Statistics
- **Theory:** Study `Class4_13_02.pdf` with emphasis on distribution summaries.
- **R practice:** run `Episode 2 Script.R` and calculate mean/median/variance/quantiles on `DW.RData` and `AI.csv`.
- **Deliverable:** one table of descriptive statistics and one narrative interpretation.

### Day 5 - Class 5 + Practice Set Validation
- **Theory:** Study `Class5_18_02.pdf`; map each concept to a computation step in R.
- **R practice:** solve tasks from Episode 2 exercises; compare with:
  - `Episode 2, Exercise 1 Solution Script.R`
  - `Exercise 3, Episode 2 Solution.R`
- **Deliverable:** error log (what differed from official solution and why).

### Weekend (Light)
- Rewatch/review difficult slides from Classes 1-5.
- Clean week-1 scripts into a single `week1_review.R` file.

---

## Week 2 (Integration + Exam-Oriented Accuracy)

### Day 6 - Class 6 + Larger Dataset Analysis
- **Theory:** Study `Class6_20_02.pdf` and identify inferential/advanced components.
- **R practice:** use `IPODataFull.csv` to produce robust summary and grouped analysis.
- **Deliverable:** reusable function-based script (`summary_by_group()` style workflow).

### Day 7 - Class 7 + Reproducible Workflows
- **Theory:** Study `Class7_26_02.pdf`; list procedures and assumptions to check before analysis.
- **R practice:** refactor previous code with clear sections: load, clean, analyze, visualize, conclude.
- **Deliverable:** one polished analysis script with consistent naming and comments.

### Day 8 - Class 8 + Full Problem Solving
- **Theory:** Study `Class8_27_02.pdf` and build a concept map linking Classes 1-8.
- **R practice:** complete one timed mini-project using combined techniques.
- **Deliverable:** 60-90 minute timed notebook/script and post-mortem notes.

### Day 9 - Past Paper Drill 1
- **Theory refresh:** revisit formulas/rules where you made most mistakes.
- **R practice:** solve first partial tasks, then verify with:
  - `30401 First Partial Exam Solution Script 12.3.2025.R`
- **Deliverable:** score sheet (correct/partial/wrong) + corrected solutions.

### Day 10 - Past Paper Drill 2 + Final Consolidation
- **Theory refresh:** quick revision across all class notes.
- **R practice:** solve the general/second partial script-based exam and compare with:
  - `30401 Exam Solution Script 25.5.2025.R`
- **Deliverable:** final checklist of recurring errors + "exam day" cheat-sheet.

### Weekend (Optional Final Pass)
- Re-run all scripts end-to-end.
- Ensure every concept from Om's slide classes has at least one R implementation.

---

## Accuracy Rules (to produce the most accurate results)

1. **Always replicate before modifying:** first reproduce official script outputs unchanged.
2. **Use paired validation:** your output vs provided solution scripts for each exercise/past paper.
3. **Keep unit-style checks in R:**
   - row counts after import/cleaning,
   - missing value counts,
   - sanity checks on ranges and summary statistics.
4. **Document assumptions explicitly:** every statistical result should include assumptions used.
5. **Track mistakes:** maintain a log of conceptual vs coding errors and revisit it daily.

---

## Suggested Daily Template

```text
[Theory Summary]
- 5-10 bullet points from the class slides.

[R Tasks]
- Data loaded:
- Analyses run:
- Plots/tables produced:

[Validation]
- Compared against: (script/file)
- Differences found:
- Fixes made:

[Key Takeaway]
- What to remember for exams:
```

This format keeps the two-week plan tightly aligned with Om's theoretical material while ensuring measurable R progress and verification against official solutions.
