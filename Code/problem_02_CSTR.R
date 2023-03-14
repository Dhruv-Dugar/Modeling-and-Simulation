# Problem no. 2  on CSTR data (shared problem statement through email)
# Objective s to "Develop a linear and nonlinear model for given experimental data, carry out error analysis and optimization for parameter estimation" 


# Step-1: data collection and data analysis (descriptive analysis)

ca= c(0.98, 0.983, 0.544, 0.225, 0.566, 0.034)  # concentration as a response variable
time= c(0.1, 0.2, 0.1, 0.5, 0.02, 0.06)  # time as an independent variable 
temp = c(100, 100, 200, 200, 300, 300)   # temp as an independent variable 
df= cbind(ca, time, temp)  # create a matrix of exp data
df
pairs(df)    # check significance of variables
cor(df)
plot(time, ca)
plot(temp, ca)


# step 2: linear model development (predictive analysis)

model_linear = lm(ca ~ time+temp)
summary(model_linear)
coef(model_linear)
predict.lm(model_linear)

ca_model = 1.51 -1.017*time-0.0039*temp  # final built model expressions  based 
ca_model
plot(ca, ca_model)   # parity plot showing model vs actual plot

library(Metrics)
rmse(ca, ca_model)   # error analysis using rmse method
mape(ca, ca_model)   # error analysis using mape method

data_linearmodel=cbind(ca, ca_model, (ca-ca_model))   # exporting results in .csv format
write.csv(data_linearmodel, file= "data_linearmodel.csv")



# Step 3: non-linear model development (predictive analysis)

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







# model optimization using R for parameter optimization 


# case 1: single-parameter (coefficient: c1) optimization of developed model

OF = function(c1) {                                 # created objective function (OF) which is (model-experiment)^2
  ca_model11 = ((1.017*time-c1*temp) -ca)^2
  return(ca_model11)
  
}
c1= 0
d=nlminb(c1, OF, lower = -Inf, upper = Inf)    #use nlminb function for optimization 
d$par
d$objective
d$iterations







# Case 2: multi-parameters (coefficients: c1 and C2) optimization of the developed model 

OF = function(C) {
  ca_model12 = (C[1]*time-C[2]*temp - ca)^2
  return(ca_model12)
  
}
C= c(0,0)
d=nlminb(C, OF, lower = -Inf, upper = Inf)
d$par
d$objective




# end of data-driven model building using R-computing 


