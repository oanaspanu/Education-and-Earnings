regr = lm(data$`GDP per Capita` 
          ~ data$`Employment Rate` 
          + data$`Average annual net earnings` 
          + data$`Average Years of Schooling` 
          + data$`Inflation rate`)

regrUE = lm(data$`GDP per Capita` 
            ~ data$`Employment Rate` 
            + data$`Average annual net earnings` 
            + data$`Average Years of Schooling` 
            + data$`Inflation rate` 
            + data$`EU Member`)

summary(regr)
summary(regrUE)

#testing the hyptheses for regr
lmtest:: resettest(regr) #liniarity for the model
car:: vif(regr) #multicolinearity for X variables
lmtest::bgtest(regr) #homoscedasticity of residuals
car:: durbinWatsonTest(regr)#autocorrelation of residuals
shapiro.test(regr$residuals) #normallity of residuals

#testing the hyptheses for regrUE
lmtest:: resettest(regrUE) 
car:: vif(regrUE) #multicolinearity for X variables
lmtest::bgtest(regrUE) #homoscedasticity of residuals
car:: durbinWatsonTest(regrUE)#autocorrelation of residuals
shapiro.test(regrUE$residuals) #normallity of residuals


