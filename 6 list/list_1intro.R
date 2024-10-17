# Introduction to R ----
## Familiarization ----

### Vectors ----
# Vectors in R are one-dimensional arrays that can store elements of the same data type. They are a fundamental data structure used to represent sequences of values.

# Key Characteristics of Vectors:
# • Elements: Vectors contain elements of the same data type (e.g., numeric, character, logical).
# • Indexing: Elements are accessed using indices, starting from 1.
# • Length: The length of a vector is the number of elements it contains.
# • Operations: You can perform various operations on vectors, such as arithmetic, logical, and comparison operations.

# Creating Vectors
# You can create vectors using the c() function

# Vectors used to store and manipulate various types of data, from numerical values to categorical variables.

### Matrices ----
# Matrices are rectangular arrays of numbers or symbols arranged in rows and columns. They are a fundamental tool in mathematics, used in various fields such as linear algebra, statistics, and computer science.

#### Key Components of a Matrix:----
# • Rows: Horizontal arrangements of elements.
# • Columns: Vertical arrangements of elements.
# • Elements: Individual values within a matrix.
# • Dimensions: The number of rows and columns in a matrix (e.g., a 3x4 matrix has 3 rows and 4 columns).

#### Types of Matrices:----
# • Square Matrix: A matrix with an equal number of rows and columns.
# • Identity Matrix: A square matrix with 1s on the diagonal and 0s elsewhere.
# • Zero Matrix: A matrix with all elements equal to 0.
# • Diagonal Matrix: A square matrix where all non-diagonal elements are 0.
# • Transpose Matrix: A matrix formed by interchanging the rows and columns of another matrix.
# • Inverse Matrix: The multiplicative inverse of a square matrix.

#### Matrix Operations:----
# • Addition: Adding corresponding elements of two matrices of the same dimensions.
# • Subtraction: Subtracting corresponding elements of two matrices of the same dimensions.
# • Scalar Multiplication: Multiplying each element of a matrix by a scalar.
# • Matrix Multiplication: A more complex operation involving the dot product of rows and columns.

#### Applications of Matrices:----
# • Linear Equations: Solving systems of linear equations.
# • Data Analysis: Representing and manipulating data sets.
# • Computer Graphics: Transforming and manipulating images.
# • Cryptography: Encryption and decryption algorithms.
# • Machine Learning: Training and applying machine learning models.

### Data Frames----
# Data Frames in R are a fundamental data structure used to store and manipulate tabular data. They are similar to spreadsheets, with rows representing observations and columns representing variables.

# Key Characteristics of Data Frames:
# • Columns: Each column represents a variable, and can store different data types (e.g., numeric, character, factor).
# • Rows: Each row represents an observation or data point.
# • Homogeneous Columns: All elements within a column must be of the same data type.
# • Named Columns: Columns are typically named for easier identification and analysis.

# To create a dataframe heres the code:
my_data <- data.frame(
  column1 = c(1, 2, 3),
  column2 = c("A", "B", "C")
)
### Lists ----
# Lists in R are a versatile data structure that can store elements of different data types within a single object. Unlike vectors, which require all elements to be of the same type, lists can contain elements of varying types, including other lists.

# Key Characteristics of Lists:
# • Heterogeneous Elements: Lists can contain elements of different data types (e.g., numeric, character, logical, factors, or even other lists).
# • Named Elements: You can assign names to individual elements of a list, making them easier to access and manage.
# • Nested Lists: Lists can contain other lists, creating complex hierarchical structures.

# Code 
my_list <- list(
  name = "John",
  age = 30,
  city = "New York"
)