# Advertising Sales Prediction

## Objective
Predict sales based on advertising budgets for TV, Radio, and Newspaper using multiple linear regression.

## Dataset
Synthetic dataset with 10 observations:
- TV: Budget spent on TV ads
- Radio: Budget spent on radio ads
- Newspaper: Budget spent on newspaper ads
- Sales: Product sales (target variable)

## Methodology
- Built a multiple linear regression model: `Sales ~ TV + Radio + Newspaper`
- Evaluated model using predicted vs actual plots and residual plots.

## Key Findingss
- Coefficients indicate how each ad medium impacts sales.
- Residual plot shows whether assumptions of linear regression are satisfied.
- Newspaper may have lower impact compared to TV and Radio.

## Plots
Actual vs Predicted
Residuals

## How to Run
1. Install R and `ggplot2` library.
2. Run the script:
```r
source("advertising_model.R")
