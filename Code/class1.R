# 25 January 2023
a = c(1:5)
b = c(2,3,4,5,7)
c = c('CHE')

typeof(c)
typeof(a)

cbind(a,b)
cbind.data.frame(input = a, output = b)

# in case of a figure margins too large error, you make the plot area larger than initially
# this is when RStudio is unable to render the plot in the Plot Window

m = matrix(c(1,2,3, 11, 12, 13), 
           nrow = 2, ncol = 3, 
           byrow = TRUE, 
           dimnames = list(
                        c("Data 1", "Data 2"), 
                        c("C1", "C2", "C3"))
           )


# common statistical terms, and their usage on a vector
hist(a)
boxplot(a)
mean(a)
median(a)
sd(a)

# Regression analysis

model1 = lm(b~a)
anova(model1)


