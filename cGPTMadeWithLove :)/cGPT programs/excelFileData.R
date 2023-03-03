# Install and load the readxl package
install.packages("readxl")
library(readxl)

# Import the Excel file
data <- read_excel("file_path.xlsx")

# Calculate the mean marks of Physics
mean_physics <- mean(data$Physics)
cat("Mean marks of Physics:", mean_physics, "\n")

# Calculate the mean marks of Maths
mean_maths <- mean(data$Maths)
cat("Mean marks of Maths:", mean_maths, "\n")

# Calculate the median marks of Chemistry
median_chemistry <- median(data$Chemistry)
cat("Median marks of Chemistry:", median_chemistry, "\n")

# Calculate the D4 of Maths
d4_maths <- quantile(data$Maths, 0.75) + 1.5 * IQR(data$Maths)
cat("D4 for Maths:", d4_maths, "\n")

# Calculate the IQR of Chemistry
iqr_chemistry <- IQR(data$Chemistry)
cat("IQR of Chemistry:", iqr_chemistry, "\n")

# Calculate the SD for all subjects
sd_physics <- sd(data$Physics)
sd_chemistry <- sd(data$Chemistry)
sd_maths <- sd(data$Maths)
cat("SD of Physics:", sd_physics, "\n")
cat("SD of Chemistry:", sd_chemistry, "\n")
cat("SD of Maths:", sd_maths, "\n")
