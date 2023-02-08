# # # 25 January 2023
# # a = c(1:5)
# # b = c(2,3,4,5,7)
# # c = c('CHE')
# # 
# # typeof(c)
# # typeof(a)
# # 
# # cbind(a,b)
# # cbind.data.frame(input = a, output = b)
# # 
# # # in case of a figure margins too large error, you make the plot area larger than initially
# # # this is when RStudio is unable to render the plot in the Plot Window
# # 
# # m = matrix(c(1,2,3, 11, 12, 13), 
# #            nrow = 2, ncol = 3, 
# #            byrow = TRUE, 
# #            dimnames = list(
# #                         c("Data 1", "Data 2"), 
# #                         c("C1", "C2", "C3"))
# #            )
# # 
# # 
# # # common statistical terms, and their usage on a vector
# # hist(a)
# # boxplot(a)
# # mean(a)
# # median(a)
# # sd(a)
# # 
# # # Regression analysis
# # 
# # model1 = lm(b~a)
# # anova(model1)
# 
# 
# # Importing data from excel file
# 
# # 27 January 2023
# 
# # library(readxl)
# # library(writexl)
# # 
# # # this is how we import a dataset from excel to a matrix in R
# # data_final <- read_excel("ModSim/R/Data/Coffee_domestic_consumption.xlsx")
# # 
# # # to view a Data Set
# # View(data_final)
# # 
# # # data_final[6:10, 4:5]
# # # data_final[2:10, 6:12]
# # 
# # # extract a portion of the data, just for our convienence for training the dataset
# # 
# # data_training = data_final[1:30, ]
# # write_xlsx(data_training, "ModSim/R/Data/New_data.xlsx")
# # 
# # # there is a pairs function which we can run on a data frame 
# # # it will correlate  graphs between all variable pairs
# # 
# # # there is a cor function as well, which lists the correlation factor (r)
# # # and tells the correlation factor among the variables
# # 
# # 
# # mean(data_training$`1990/91`)
# # 
# # 
# # # the 1990-91 data is the x axis, and the total domestic consumption 
# # # will be the y axis
# # plot(data_training$`1990/91`, data_training$Total_domestic_consumption, xlab = "1990 - 91", ylab = "Total Domestic Consumption")
# # 
# # 
# # 
# # model = lm(data_training$`1990/91` ~ data_training$`2019/20`)
# # 
# # expt_no = c(1:6)
# 
# timeTaken = c (0.1, 0.2, 0.1, 0.5, 0.02, 0.06)
# 
# temperature = c(100,100,200,200,300,300)
# 
# concentration = c(0.98, 0.983, 0.544, 0.225, 0.566, 0.034)
# 
# data = cbind(timeTaken, temperature, concentration)
# dim(data)
# summary(data)
# pairs(data)
# cor(data)
# 
# data[,1:2]
# 
# data[,1,3]
# 
# 
# model1 = lm(concentration~temperature + timeTaken)
# summary(model1)
# concentrationPredicted = predict.lm(model1)
# 
# # to get the coefficients for the multivariable regression
# coef(model1)
# 
# 
# # KPI -> Key Performance Indicators
# # very important in Statistics, it tells how important a data is
# 
# 
# # anova is a different way to make the 
# model2 = anova(model1)
# 
# plot(concentrationPredicted, concentration, type = "o", col = "red")
# 
# 
# temp = c(500, 600, 700)
# # concentrationModelling = 0.16 + 0.5 * temp
# 
# 
# 
# df = function(temp){
#   concentrationModelling = 0.16 + 0.5*temp
#   
#   return (concentrationModelling)
# }
# 
# 
# flowRates = c(10, 15, 20)
# efficiency = c(0.0667, 0.1, 0.1667)
# plot(flowRates, efficiency, type = "o", col = "red", xlab = "Flow rate (LPM)", ylab = "Efficiency", xlim = c(5,25), ylim = c(0.05, 0.17))



library(Metrics)
time = c(0.1,0.2,0.1,0.5,0.02,0.06)
temp = c(100, 100, 200, 200, 300, 300)
conc = c(0.98, 0.983, 0.544, 0.225, 0.566, 0.034)
data = cbind(time, temp, conc)
dim(data)
data
pairs(data)
cor(data)
model1 = lm(conc ~ temp + time)
summary(model1)
plot(model1)
anova(model1)
predict.lm(model1)
concex = c(1.0165011, 0.9147396, 0.6197823, 0.2127364, 0.3044726, 0.2637680 )
plot(concex, conc, "o")
coef(model1)

temp1 = c(500, 600, 700)

df = function(temp1){
  concex = 0.16 + 0.5*temp1
  return(concex)
}
concex
error = conc - concex
error
Z = cbind(conc, concex, error)
sqerror = rmse(concex, conc)
sqerror
pererror = mape(concex, conc)
pererror

write.csv(Z, file = "PFR MODEL.csv")


read.csv("")