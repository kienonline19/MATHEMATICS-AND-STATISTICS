#####################################################
# Episode 1, Part II: Dataframes, Variables, Charts #
#####################################################

# To clean the environment
# rm(list=ls())
# To clean the console
# ctrl + l 
# To run a line of code
# ctrl + enter

# ============================================================
# 1. Introduction & Data Overview
# ============================================================
# In this section, we will:
#  - Load and inspect the Loyalty dataset.
#  - Identify variable types: nominal, ordinal, count data, and continuous data.

Loyalty$Income

# For example, in our dataset:
# CATEGORICAL VARIABLES:
#  - Nominal: Payment, Dept (categorical with no intrinsic order)
Loyalty$Payment
Loyalty$Dept
#  - Ordinal: Recommend (e.g., "Very Unlikely", "Neutral", etc., if ordered)
Loyalty$Recommend
# NUMERICAL VARIABLES:
#  - Count data: Age, Nr_visits (discrete counts)
Loyalty$Nr_visits
#  - Continuous data: Amount, Profitability, Amount_V (numeric measurements)
Loyalty$Profitability

# Display the first few rows to see what the data looks like:
head(Loyalty)

# See the structure of the dataset (shows data types):
str(Loyalty)

# ============================================================
# 2. Applying Simple Functions: min() and mean()
# ============================================================
# Let’s apply some simple functions on our continuous variables.
# For example, we will calculate the minimum and mean of Amount and Age.

# Calculate min for the Amount variable:
min_amount = min(Loyalty$Amount)
print(paste("Minimum Amount:", min_amount))

# Calculate the mean for the Amount variable:
mean_amount = mean(Loyalty$Amount)
print(paste("Mean Amount:", mean_amount))

# Calculate the minimum age:
min_age = min(Loyalty$Age,na.rm = TRUE)
print(paste("Minimum Age:", min_age))

# Calculate the mean age:
mean_age = mean(Loyalty$Age,na.rm = TRUE)
print(paste("Mean Age:", mean_age))

# ============================================================
# 3. Creating Plots in R
# ============================================================
# In this section, we'll produce several types of plots to explore the data.

# ------------------------------
# 3.1. Barplot & Pie Chart for Categorical Variables
# ------------------------------

# Example: Payment method distribution
payment_table = table(Loyalty$Payment)

# Barplot for Payment method
barplot(payment_table,
        main = "Barplot of Payment Methods",
        xlab = "Payment Method",
        ylab = "Frequency",
        col = "lightblue",
        border = "blue")

# Pie chart for Payment method
pie(payment_table,
    main = "Pie Chart of Payment Methods",
    col = rainbow(length(payment_table)))
# NEVER USE PIE CHARTs!

# ------------------------------
# 3.2. Histograms & Boxplots for Numerical Variables
# ------------------------------

# Histogram for Age distribution
hist(Loyalty$Age,
     main = "Histogram of Customer Ages",
     xlab = "Age",
     col = "lightgreen",
     border = "darkgreen",
     breaks = c(25,35,45,55,65,75,85))

# Boxplot for Profitability (we see this later on)
boxplot(Loyalty$Profitability,
        main = "Boxplot of Profitability",
        ylab = "Profitability",
        col = "lightyellow",
        border = "orange")

# ------------------------------
# 3.3. Stacked Bar Charts for Two Categorical Variables
# ------------------------------
# Example: Cross-tabulate Recommend and Payment methods.
# (Assuming 'Recommend' is categorical; if ordered, it can still be treated as a factor.)
recommend_dept = table(Loyalty$Recommend, Loyalty$Dept)
print(recommend_dept)

# Stacked bar chart:
barplot(recommend_dept,
        main = "Stacked Bar Chart: Recommend vs Department",
        xlab = "Department",
        ylab = "Count",
        legend.text = rownames(recommend_dept))

# ------------------------------
# 3.4. Scatterplot for Two Numerical Variables
# ------------------------------
# Example: Scatterplot of Age vs Profitability.
plot(Loyalty$Age, Loyalty$Profitability,
     main = "Scatterplot: Age vs Profitability",
     xlab = "Age",
     ylab = "Profitability",
     pch = 19,         # solid circle
     col = "purple")

# ------------------------------
# 3.5. Multiple Boxplots for One Numerical and One Categorical Variable
# ------------------------------
# Example: Boxplot of Profitability by Recommend category.
boxplot(Age ~ Payment, data = Loyalty,
        main = "Boxplots of Profitability by Recommend",
        xlab = "Payment",
        ylab = "Age",
        col = c("lightblue", "lightpink", "lightgray"))

# ============================================================
# 4. Filtering Examples
# ============================================================
# Filtering is a key step in data analysis—it allows you to extract specific
# subsets of your data based on one or more conditions.
#
# Here are a few examples:

# Example 1: Extract the ages of customers using "Cash" as their payment method.
cash_ages = Loyalty$Age[Loyalty$Payment == "Cash"]
print("Ages of customers using Cash:")
print(cash_ages)

# Example 2: Define a subsample of customers who are over 65.
over65 = Loyalty[Loyalty$Age > 65, ]
print("Subset of customers older than 65 (first few rows):")
head(over65)

# Example 3: Extract rows where Amount is greater than 200 and Profitability is above 85.
high_value_customers = Loyalty[Loyalty$Amount > 200 & Loyalty$Profitability > 85, ]
print("Customers with Amount > 200 and Profitability > 85 (first few rows):")
head(high_value_customers)

# Example 4: Filter for customers who used Credit Card as the payment method and
# have at least 3 visits.
credit_card_customers = Loyalty[Loyalty$Payment == "Credit Card" & Loyalty$Nr_visits >= 3, ]
print("Credit Card customers with at least 3 visits (first few rows):")
head(credit_card_customers)