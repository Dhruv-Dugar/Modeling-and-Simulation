# "step wise Multivariate model development for PFR data"



# step 1: Assign/index all the variables by storing data (dependent-independent or response-predictor) 
xa= c(0, 10, 15, 20, 25, 30, 60, 80, 100)   # conversion in wt.%
temp= c(10, 20, 30, 40, 50, 60, 80, 90, 98)  # reactor temp in oC
catloading= c(0, 5, 10, 15, 20, 25, 30,40, 50) # catalyst loading in wt.%
spacetime= c(1, 3, 5, 7, 8, 10, 12, 15, 20)  # space time in hr



# step 2: Create a matrix of experimental data by combining them
data= cbind(xa,temp,catloading,spacetime)
data
dim(data)
View(data)

# Step 3: Data analysis (Descriptive/Diagnostic analysis)
summary(data)
pairs(data)
mean(xa)
sd(xa)
hist(catloading)
plot(temp, xa)
plot(catloading, xa)
plot(spacetime, xa, "o", col="red")



# Step 4: linear regression model building and model analysis (Predictive analysis)
model_PFR1=lm(xa ~ temp)
model_PFR2= lm(xa ~ catloading)
model_PFR3= lm(xa ~ temp+catloading+spacetime)

summary(model_PFR1)
summary(model_PFR2)
summary(model_PFR3)

anova(model_PFR1)
anova(model_PFR2)
anova(model_PFR3)

data_model1= predict.lm(model_PFR1)
data_model2= predict.lm(model_PFR2)
data_model3= predict.lm(model_PFR3)


cbind(xa, data_model1)
cbind(xa, data_model2)
cbind(xa, data_model3)

plot(temp, xa)              # experimental data trend
lines(temp, data_model1)    #  developed regression model's behavior (1st model)
lines(temp, data_model2)    #  developed regression model's behavior (2nd model)
lines(temp, data_model3)    #  developed regression model's behavior (3rd model)


# Error (RMSE, MAPE, RE, APE) analysis of built model to be continued..........................

