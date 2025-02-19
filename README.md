# Education-and-Earnings


## Overview
This econometrics project investigates the relationship between GDP per capita and various economic factors using linear regression models. The primary objective of this analysis is to estimate how certain predictors (including employment rate, net earnings, schooling years, inflation rate, and EU membership) affect the GDP per capita. We estimate two models: one with a dummy variable for EU membership and one without it. We then validate the results and conduct tests for the assumptions of the linear regression model.

## Files Included:
1. **analysis.R** Contains the R code used to perform the regression analysis and diagnostic tests.
2. **dataset.xlsx** The Excel file with the raw data used in the analysis.

---


## Methodology:
The dataset contains economic data for 30 observations.

### a) Variables Defined:
1. **GDP per Capita:** The dependent variable measured in USD, representing the total economic output per person.
2. **Employment Rate:** Percentage of the working-age population that is employed.
3. **Average Annual Net Earnings:** The mean annual net salary, adjusted for taxes.
4. **Average Years of Schooling:** The average number of years that people spend in formal education.
5. **Inflation Rate:** The annual percentage change in the average price level of goods and services.
6. **EU Membership (Dummy Variable):** A binary variable indicating whether a country is a member of the European Union (1 for member, 0 for non-member).

### b) Data Cleaning:
The dataset was cleaned to ensure there were no missing values. Descriptive statistics, such as mean, median, and mode, were calculated for each variable to understand their distributions.

### c) Regression Models:
Two regression models were developed:
- **Model 1:** Includes the dummy variable for EU membership.
- **Model 2:** Excludes the dummy variable for EU membership.

---


## Calculations in the Excel Dataset:
The Excel file contains the raw data, and the following calculations were performed:
- **Descriptive statistics:** Mean, median, mode, standard deviation, and variance for each variable.
- **Regression Inputs:** The data was structured for use in regression analysis (with appropriate columns for each variable and the dummy variable for EU membership).
- **Goodness-of-Fit Metrics:** Key regression statistics were calculated, including:
  - **Multiple R**: Measures the strength of the relationship between the predictors and the outcome variable.
  - **R-squared and Adjusted R-squared**: Indicates the proportion of variance explained by the model and accounts for the number of predictors.
  - **Standard Error**: Measures the average distance that observed values fall from the regression line.
  - **ANOVA (Analysis of Variance)**: For testing the overall significance of the regression model.
  - **Coefficients**: Estimates of the impact of each predictor on GDP per capita.

---


## Regression Analysis in R:
The R script performs the following:
1. **Model Estimation:**
   - `lm()` function is used to fit the linear regression models.
2. **Diagnostic Tests:**
   - **Linearity (RESET Test):** Tests if the relationship between predictors and the outcome is linear.
   - **Multicollinearity (VIF Test):** Checks if predictors are correlated, using the Variance Inflation Factor (VIF).
   - **Homoscedasticity (Breusch-Godfrey Test):** Assesses if residuals have constant variance.
   - **Autocorrelation (Durbin-Watson Test):** Checks for independence of residuals.
   - **Normality of Residuals (Shapiro-Wilk Test):** Tests if the residuals follow a normal distribution.

---


## Results:
- **Model 1** (with the dummy variable for EU membership) suggests that the EU membership variable does not significantly affect GDP per capita, with a high p-value (0.584). Other predictors such as **Average Annual Net Earnings** and **Inflation Rate** show stronger relationships with GDP.
  
- **Model 2** (without the EU dummy variable) has a slightly better adjusted R-squared and lower standard error, indicating a marginally better fit.
  
---

## Conclusion:
The analysis shows that certain economic factors (such as average annual net earnings and inflation rate) have a statistically significant impact on GDP per capita, while others (like employment rate and EU membership) do not appear to have a strong effect in this dataset. The model excluding the EU membership dummy variable slightly improves in terms of adjusted R-squared and standard error.
