# Create the vectors for year and sales data
year <- c(2001, 2002, 2003, 2004, 2005, 2006, 2007)
sales <- c(40, 48, 65, 72, 70, 62, 81)

# Create a data frame with the year and sales data
df <- data.frame(year, sales)

# Calculate the linear regression model
model <- lm(sales ~ year, data = df)

# Print the model summary to get the trend line equation
summary(model)

# Predict the sales for the year 2008
sales_2008 <- predict(model, data.frame(year = 2008))

# Print the predicted sales for the year 2008
cat("Predicted sales for the year 2008:", round(sales_2008))
