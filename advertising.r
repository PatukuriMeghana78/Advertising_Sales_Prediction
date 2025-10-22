# The dataset
advertising <- data.frame(
  TV = c(230.1, 44.5, 17.2, 151.5, 180.8, 8.7, 57.5, 120.2, 8.6, 199.8),
  Radio = c(37.8, 39.3, 45.9, 41.3, 10.8, 48.9, 32.8, 19.6, 2.1, 2.6),
  Newspaper = c(69.2, 45.1, 69.3, 58.5, 58.4, 75.0, 23.5, 11.6, 1.0, 21.2),
  Sales = c(22.1, 10.4, 9.3, 18.5, 12.9, 7.2, 11.8, 13.2, 4.8, 10.6)
)

# Load library
library(ggplot2)

# Build regression model
model <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)

# Add predicted values
advertising$Predicted <- predict(model)

# Residuals
advertising$Residuals <- advertising$Sales - advertising$Predicted

# Plot Actual vs Predicted
ggplot(advertising, aes(x = Sales, y = Predicted)) +
  geom_point(color = "blue", size = 3) +
  geom_abline(intercept = 0, slope = 1, color = "red") +
  labs(title = "Actual vs Predicted Sales",
       x = "Actual Sales",
       y = "Predicted Sales") +
  theme_minimal()

# Plot Residuals
ggplot(advertising, aes(x = Predicted, y = Residuals)) +
  geom_point(color = "darkred", size = 3) +
  geom_hline(yintercept = 0, linetype = "dashed", color = "blue") +
  labs(title = "Residual Plot",
       x = "Predicted Sales",
       y = "Residuals") +
  theme_minimal()