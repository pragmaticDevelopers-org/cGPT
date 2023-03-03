# Creating objects x and y
x <- c(2, 4, 6, 4, 5, 3)
y <- c(18, 14, 4, 6, 6, 12)

# a) Calculating the coefficient of correlation
correlation <- cor(x, y)
cat("Coefficient of correlation: ", correlation, "\n")

# b) Regression equation of y on x
regression_yx <- lm(y ~ x)
cat("Regression equation of y on x: ", round(regression_yx$coefficients[1], 2), "+",
    round(regression_yx$coefficients[2], 2), "x\n")

# Finding y where x = 10
y_at_10 <- round(predict(regression_yx, data.frame(x = 10)), 2)
cat("Value of y when x = 10: ", y_at_10, "\n")

# c) Regression equation of x on y
regression_xy <- lm(x ~ y)
cat("Regression equation of x on y: ", round(regression_xy$coefficients[1], 2), "+",
    round(regression_xy$coefficients[2], 2), "y\n")

# Finding x where y = 8
x_at_8 <- round(predict(regression_xy, data.frame(y = 8)), 2)
cat("Value of x when y = 8: ", x_at_8, "\n")

# d) Creating object z
z <- c(39, 40, 43, 47, 46, 38)

# e) Regression equation of z on x and y
regression_zy <- lm(z ~ x + y)
cat("Regression equation of z on x and y: ", round(regression_zy$coefficients[1], 2), "+",
    round(regression_zy$coefficients[2], 2), "x +", round(regression_zy$coefficients[3], 2), "y\n")

# f) Scatter plot of x and y
plot(x, y, xlab = "X", ylab = "Y", main = "Scatter plot of X and Y")
