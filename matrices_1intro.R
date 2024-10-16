# Introduction to R ----
## Matrices ----

# Matrices are rectangular arrays of numbers or symbols arranged in rows and columns. They are a powerful tool used in various fields of mathematics, including linear algebra, statistics, and computer science.

# Basic Components of a Matrix:
# • Rows: Horizontal arrangements of elements.
# • Columns: Vertical arrangements of elements.
# • Elements: Individual values within a matrix.
# • Dimensions: The number of rows and columns in a matrix (e.g., a 3x4 matrix has 3 rows and 4 columns).

# Components:
# • matrix: This function is used to create a matrix in R.
# • 1:9: This generates a vector of numbers from 1 to 9.
# byrow = TRUE: This argument specifies that the matrix should be filled row-wise. If set to FALSE, the matrix would be filled column-wise.
# • nrow = 3: This indicates that the matrix should have 3 rows.

# Step-by-step Explanations:
# 1. Vector Creation: The 1:9 part creates a vector containing numbers from 1 to 9: 1 2 3 4 5 6 7 8 9.
# 2. Matrix Construction: The matrix function takes this vector and arranges it into a matrix structure.
# 3. Row-wise Filling: Since byrow = TRUE, the elements of the vector are filled into the matrix row by row.
# 4. 3 Rows: The nrow = 3 ensures that the matrix has exactly 3 rows.

# For restarting environment
rm(list = ls())

# Construct a matrix with 3 rows that contains numbers 1 to 9
matrix(1:9, byrow = TRUE, nrow = 3)
