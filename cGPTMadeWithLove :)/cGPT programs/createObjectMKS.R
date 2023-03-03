# Create object to store marks
mks <- c(78,56,45,82,69,54,48,39,44,90,87,73,79,54,42,38,62)

# Number of students
num_students <- length(mks)
cat("Number of students: ", num_students, "\n")

# Range
range_marks <- range(mks)
cat("Range of marks: ", range_marks, "\n")

# Arrange marks
sorted_marks <- sort(mks)
cat("Sorted marks: ", sorted_marks, "\n")

# Median marks
median_marks <- median(mks)
cat("Median marks: ", median_marks, "\n")

# Average marks
avg_marks <- round(mean(mks), 2)
cat("Average marks: ", avg_marks, "\n")

# Variance of marks
variance_marks <- round(var(mks), 2)
cat("Variance of marks: ", variance_marks, "\n")

# Standard deviation of marks
sd_marks <- round(sd(mks), 2)
cat("Standard deviation of marks: ", sd_marks, "\n")

# Modal marks
modal_marks <- names(table(mks))[table(mks) == max(table(mks))]
cat("Modal marks: ", modal_marks, "\n")

# All quartiles
quartiles_marks <- quantile(mks)
cat("All quartiles: ", quartiles_marks, "\n")

# D7
d7_marks <- sorted_marks[7]
cat("D7: ", d7_marks, "\n")

# P72
p72_marks <- quantile(mks, 0.72)
cat("P72: ", p72_marks, "\n")

# Q.D
qd_marks <- IQR(mks)
cat("Q.D: ", qd_marks, "\n")

# Overall summary
summary(mks)
