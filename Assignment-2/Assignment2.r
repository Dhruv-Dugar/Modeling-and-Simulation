library(readxl)
library(Metrics)
data <- read_excel("AirQualityUCI_cleaned.xlsx")
View(data)

dim(data)

summary(data)

# making matrix of the important data
pollutiondata <- cbind(data$CO_GT,
                        data$PT08_S1_CO,
                        data$C6H6_GT,
                        data$PT08_S2_NMHC,
                        data$NOX_GT,
                        data$PT08_S3_NOX,
                        data$NO2_GT,
                        data$PT08_S4_NO2,
                        data$PT08_S5_O3,
                        data$T,
                        data$RH,
                        data$AH,
                        data$HOUR,
                        data$MONTH)

View(pollutiondata)

summary(pollutiondata)

cor(data)
pairs(data)
# making a linear model for the prediction of relative humidity
# with all the rest of the data points as the inputs for the model

model <- lm(data$RH ~ data$CO_GT + data$PT08_S1_CO + data$C6H6_GT + data$PT08_S2_NMHC + data$NOX_GT + data$PT08_S3_NOX + data$NO2_GT + data$PT08_S4_NO2 + data$PT08_S5_O3 + data$T + data$AH + data$HOUR + data$MONTH) # nolint: line_length_linter.

summary(model)
plot(model)

anova(model)

predict.lm(model)

plot(data$RH, predict.lm(model))
coef(model)

rmse(predict.lm(model), data$RH)
mape(predict.lm(model), data$RH)

# Similary we can make a non linear model provided we have the data about
# the coefficients and what power and functions
# are to be used in making the model