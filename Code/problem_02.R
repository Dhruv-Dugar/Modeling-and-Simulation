# Problem no. 2  (shared problem statement through email);
          # Develop a linear and nonlinear model for given experimental data. 


# Step-1: data collection and data analysis
ca= c(0.98, 0.983, 0.544, 0.225, 0.566, 0.034)  # concentration as a response variable
time= c(0.1, 0.2, 0.1, 0.5, 0.02, 0.06)  # time as an independent variable 
temp = c(100, 100, 200, 200, 300, 300)   # temp as an independent variable 
df= cbind(ca, time, temp)  # create a matrix of exp data
df
pairs(df)    # check significance of variables
cor(df)
plot(time, ca)
plot(temp, ca)


# step 2: linear model development

model_linear = lm(ca ~ time+temp)
summary(model_linear)
coef(model_linear)
predict.lm(model_linear)

ca_model = 1.51 -1.017*time-0.0039*temp  # final built model expressions  based 
ca_model
plot(ca, ca_model)   # parity plot showing model vs actual plot

library(Metrics)
rmse(ca, ca_model)   # error analysis using rmse method
mape(ca, ca_model)   # error analysis using mape analysis

data_linearmodel=cbind(ca, ca_model, (ca-ca_model))   # exporting results in .csv format
write.csv(data_linearmodel, file= "data_linearmodel.csv")



# Step 3: non-linear model development

model_nonlinear=nls(ca ~ c1*log10(time)+c2*exp(temp), start = list(c1=1, c2=0))
summary(model_nonlinear)
coef(model_nonlinear)
predict(model_nonlinear)

ca_model_nl = -8.93*0.1*log10(time)-5.172*10^-131*exp(temp)  # final built model expressions 
ca_model_nl
plot(ca, ca_model_nl)   # parity plot showing model vs actual plot

library(Metrics)
rmse(ca, ca_model_nl)   # error analysis using rmse method
mape(ca, ca_model_nl)   # error analysis using mape analysis



data_nonlinearmodel=cbind(ca, ca_model_nl, (ca-ca_model_nl))   # exporting results
write.csv(data_nonlinearmodel, file= "data_nonlinearmodel.csv")



# step 4: concluding remark is that the nonlinear model is better than the linear model based on RMSE and MAPE based error analysis. 


