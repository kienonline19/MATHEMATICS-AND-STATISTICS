# 📘 Episode 2 Script: Simple Statistical Analysis of AI Research Scores  
# ✅ Calculation of central tendency measures (mean, median, quartiles)  
# ✅ Visualizing distributions with histograms and boxplots  
# ✅ Detecting skewness and identifying potential outliers  

# 📊 ANALYZING AI RESEARCH SCORES ACROSS COUNTRIES 📊
# Dataset: AI (each row represents a country, with AI-related scores and other features)
# Variable: AI$Research (AI research score for each country)
# Variable: AI$Region (categorical variable, region classification)

# 📌 Frequency table for categorical variable (Region)
table(AI$Region)  # Counts how many countries belong to each region

# 📌 Exploring a numerical variable: AI Research Score
AI$Research  # Displays all research scores

# 📌 Central tendency: Mean and Median
mean(AI$Research)   # Computes the average AI research score
median(AI$Research) # Computes the median AI research score

# ⚠️ Recall mean > median indicate the distribution is **right-skewed**
# This suggests that a few countries have **very high AI research scores**

# 📊 HISTOGRAM of AI Research Scores
hist(AI$Research, breaks = 8)  
# This divides the data into **8 bins** and visualizes the distribution.

# 📌 First quartile (Q1) - 25th percentile
quantile(AI$Research, 0.25)  
# This gives the AI research score below which 25% of the countries fall.

# 📊 Boxplot: Graphical summary of distribution
boxplot(AI$Research)  
# Highlights median, quartiles, and potential outliers.

# 📌 Interquartile Range (IQR) and Outliers Detection
Q0.75 = quantile(AI$Research, 0.75)  # Third quartile (Q3 - 75th percentile)
Q0.25 = quantile(AI$Research, 0.25)  # First quartile (Q1 - 25th percentile)
IQR = Q0.75 - Q0.25  # Spread of the middle 50% of the data

# Upper limit for outliers (UPO)
UpperLimitForOutliers = Q0.75 + 1.5 * IQR  
# Countries with AI research scores above this threshold are upper outliers.

# 🔹 Adding a horizontal line at the outlier threshold in the boxplot
abline(h = UpperLimitForOutliers, lwd = 3, col = "blue")  

# 📊 HISTOGRAM with customized bin widths
hist(AI$Research, breaks = 8)  # Divides data into 8 equal-width bins

# 📌 Custom Histogram with specific bin ranges
h = hist(AI$Research, breaks = c(0,5,10,15,20,30,40,100))  

# Checking histogram properties
h$breaks   # Bin edges
h$counts   # Absolute frequency (number of countries in each bin)
h$density  # Bin heights (frequency densities)
h$mids     # Midpoints of each bin

# 📝 Understanding frequency densities
# Frequency density ensures **area** of bars corresponds to **relative frequency**

# ✅ Example: Calculating the area of the first bin (0–5 range)
base = 5                      # Bin width (from 0 to 5)
height = h$density[1]         # Height of the first bin
area = base * height; area    # Area represents **relative frequency**

# Key Concept: In a frequency density histogram, the **area** of each bin 
# represents the proportion of total observations falling in that range.