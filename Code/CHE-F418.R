# Modeling and Simulations in chemical Engineering (CHE-F418)


#Creating arrays of multiple elements:
a= c(1:5)
b= c(2,3,4,5,7)
c=c('CHE')
typeof(c)
typeof(a)
list(a,b)
data.frame(input= a, output=b)
cbind(a,b)
cbind.data.frame(input=a, output=b)
plot(a,b)
plot(a,b, xlab = "Temp")
plot(a,b,"l")
plot(a,b, "o")
plot(a,b, col="red")
plot(a,b, col="blue")


#Creating Matrix of elements:
x= matrix(1:10, nrow = 2)
y= matrix(1:10, ncol = 2)
?matrix

m <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
m




# descriptive analysis
hist(a)
boxplot(a)
mean(a)
median(a)
sd(a)

#Regression analysis

model1= lm(b~a)    # model building 
anova(model1)      # model analysis
summary(model1)
b_model=predict(model1)
predict.lm(model1)
plot(a,b)
lines(a,b_model)  # model vs actual plot
plot(b, b_model)  # parity plot




