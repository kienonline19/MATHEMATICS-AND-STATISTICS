#####################################################
# Episode 1, Part I: Introduction to R and R Studio #
#####################################################

# To clean the environment
# rm(list=ls())
# To clean the console
# ctrl + l 
# To run a line of code
# ctrl + enter
# You can also select part of code and press
# ctrl + enter
# to run a snippet inside a line or multiple lines

# --------------------------------------------------------------------
# 1. Basic Operations in R
# --------------------------------------------------------------------
# R can perform standard arithmetic operations.
# Use the equals sign "=" to assign values to variables.

a = 5      # Assign 5 to variable 'a'
a
b = 2      # Assign 2 to variable 'b'

# Addition
sum_ab = a + b   # 5 + 2 = 7
sum_ab
print(sum_ab)    # Expected output: 7

# Subtraction
diff_ab = a - b  # 5 - 2 = 3
print(diff_ab)   # Expected output: 3

# Multiplication
prod_ab = a * b  # 5 * 2 = 10
print(prod_ab)   # Expected output: 10

# Division
div_ab = a / b   # 5 / 2 = 2.5
print(div_ab)    # Expected output: 2.5

# Exponentiation
exp_ab = a^b     # 5^2 = 25
print(exp_ab)    # Expected output: 25

# --------------------------------------------------------------------
# 2. Vectors in R
# --------------------------------------------------------------------
# Vectors are one-dimensional arrays that store elements of the same type.

# Numeric vector
numeric_vector = c(1, 2, 3, 4, 5)
print(numeric_vector)

# Character vector
character_vector = c("apple", "banana", "cherry")
print(character_vector)

# Logical vector
logical_vector = c(TRUE, FALSE, TRUE, TRUE)
print(logical_vector)

# Mixing types leads to coercion:
mixed_vector = c(1, "two", 3)
print(mixed_vector)  # All elements become characters

# Operations with vectors and scalars
a
numeric_vector
a*numeric_vector # broadcasting
a+numeric_vector # broadcasting
other_numeric_vector = c(1,0,1,2,2)
numeric_vector*other_numeric_vector # entry-wise multiplication
numeric_vector%*%other_numeric_vector # dot product

# --------------------------------------------------------------------
# 3. Matrices in R
# --------------------------------------------------------------------
# Matrices are 2-dimensional arrays with elements of the same type.

# Creating a numeric matrix (2 rows, 3 columns)
numeric_matrix = matrix(1:6, nrow = 2, ncol = 3)
print(numeric_matrix)

# Fill the matrix by rows
numeric_matrix_byrow = matrix(1:6, nrow = 2, byrow = TRUE)
print(numeric_matrix_byrow)

# Creating a character matrix
char_matrix = matrix(c("a", "b", "c", "d"), nrow = 2)
print(char_matrix)

# Creating a logical matrix
logical_matrix = matrix(c(TRUE, FALSE, TRUE, FALSE), nrow = 2)
print(logical_matrix)

# --- Exercise for Matrices ---
# 1. Create a 3x3 matrix named 'matrix3x3' containing the numbers 1 to 9.
# (like in a numeric keypad without 0)
# 2. Subtract 5 to each element of the matrix
# 3. Apply the power of 2 to each element of the matrix
# 4. Print the matrix.
# 5. Extract and print the diagonal elements of the matrix
# (check diag() in help tab)

# --------------------------------------------------------------------
# 4. Subsetting in R
# --------------------------------------------------------------------
# Subsetting lets you extract specific elements from vectors or matrices.

# ---- Subsetting Vectors ----
# Extract the third element from numeric_vector:
third_element = numeric_vector[3]
print(third_element)  # Expected output: 3

# Exclude the second element:
vector_without_second = numeric_vector[-2]
print(vector_without_second)

# Use logical conditions to subset elements greater than 3:
numeric_vector>3 # logical vector
elements_gt_3 = numeric_vector[numeric_vector > 3]
print(elements_gt_3)  # Expected output: 4, 5

# ---- Subsetting Matrices ----
# Access element in first row, second column:
element_row1_col2 = numeric_matrix[1, 2]
print(element_row1_col2)

# Extract the entire first row:
first_row = numeric_matrix[1, ]
print(first_row)

# Extract the entire second column:
second_column = numeric_matrix[, 2]
print(second_column)

# --------------------------------------------------------------------
# 5. Factors in R
# --------------------------------------------------------------------
# Factors are used for categorical data. They store categorical variables and their levels.

# Create an ordered factor if the categories have a natural ordering.
# For example, ratings from "poor" to "excellent":
ratings = c("poor","poor","fair","poor","excellent", "good", "fair",
            "good", "excellent","poor","fair","poor")
ordered_ratings = factor(ratings, 
                         levels = c("poor", "fair", "good", "excellent"))
print(ordered_ratings)

# --------------------------------------------------------------------
# 6. Basic Functions in R
# --------------------------------------------------------------------
# Applying functions in R

# ----- Single Value Example -----

# Define a single numeric value
single_value = 2

# Calculate the exponential of the single value
# exp(x) returns e^x, where e is the mathematical constant (approx. 2.71828)
exp_single = exp(single_value)
exp(numeric_vector) # exp() is applied entry wise

# Calculate the natural logarithm of the single value
# log(x) returns the natural logarithm (base e) of x
log_single = log(single_value)

# ----- Vector Example -----

# Define a vector of numeric values
values_vector = c(1, 2, 3, 4, 5)

# Calculate the exponential for each element in the vector
# The functions are applied element-wise when given a vector
exp_vector = exp(values_vector)

# Calculate the natural logarithm for each element in the vector
log_vector = log(values_vector)

# Print the original vector and the results
print("Original vector:")
print(values_vector)

print("Exponential of each element in the vector:")
print(exp_vector)

print("Natural logarithm of each element in the vector:")
print(log_vector)

# Functions in R are created using the function() keyword.
# They encapsulate code to make it reusable. 
# We should not need to define functions in our module :)

# Define a simple function to calculate the square of a number
square = function(x) {
  result = x^2
  return(result)
}

# Call the function with an example value
result_square = square(4)
print(result_square)  # Expected output: 16

# Define a function that takes two arguments and returns the
# square of their sum
sqrtsum_numbers = function(x, y) {
  result = sqrt(x + y)
  return(result)
}

# Use the add_numbers function
result = sqrtsum_numbers(5, 4)
print(result)  # Expected output: 3