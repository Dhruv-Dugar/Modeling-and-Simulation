# # 25 January 2023
# a = c(1:5)
# b = c(2,3,4,5,7)
# c = c('CHE')
# 
# typeof(c)
# typeof(a)
# 
# cbind(a,b)
# cbind.data.frame(input = a, output = b)
# 
# # in case of a figure margins too large error, you make the plot area larger than initially
# # this is when RStudio is unable to render the plot in the Plot Window
# 
# m = matrix(c(1,2,3, 11, 12, 13), 
#            nrow = 2, ncol = 3, 
#            byrow = TRUE, 
#            dimnames = list(
#                         c("Data 1", "Data 2"), 
#                         c("C1", "C2", "C3"))
#            )
# 
# 
# # common statistical terms, and their usage on a vector
# hist(a)
# boxplot(a)
# mean(a)
# median(a)
# sd(a)
# 
# # Regression analysis
# 
# model1 = lm(b~a)
# anova(model1)


# Importing data from excel file

# 27 January 2023

# library(readxl)
# library(writexl)
# 
# # this is how we import a dataset from excel to a matrix in R
# data_final <- read_excel("ModSim/R/Data/Coffee_domestic_consumption.xlsx")
# 
# # to view a Data Set
# View(data_final)
# 
# # data_final[6:10, 4:5]
# # data_final[2:10, 6:12]
# 
# # extract a portion of the data, just for our convienence for training the dataset
# 
# data_training = data_final[1:30, ]
# write_xlsx(data_training, "ModSim/R/Data/New_data.xlsx")
# 
# # there is a pairs function which we can run on a data frame 
# # it will correlate  graphs between all variable pairs
# 
# # there is a cor function as well, which lists the correlation factor (r)
# # and tells the correlation factor among the variables
# 
# 
# mean(data_training$`1990/91`)
# 
# 
# # the 1990-91 data is the x axis, and the total domestic consumption 
# # will be the y axis
# plot(data_training$`1990/91`, data_training$Total_domestic_consumption, xlab = "1990 - 91", ylab = "Total Domestic Consumption")
# 
# 
# 
# model = lm(data_training$`1990/91` ~ data_training$`2019/20`)



