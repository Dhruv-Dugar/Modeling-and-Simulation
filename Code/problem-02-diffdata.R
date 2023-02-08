time = c(Recycled_PVC_Data$Time)
temp = c(Recycled_PVC_Data$Temp)
tga = c(Recycled_PVC_Data$TGA)
dta = c(Recycled_PVC_Data$DTA)

df = cbind(time, temp, tga, dta)
pairs(df)
cor(df)

plot(time, dta)
plot(temp, dta)


model_linear = lm(dta ~ time + temp + tga)
summary(model_linear)
coef(model_linear)
predict.lm(model_linear)

dta_model = 31.82 - 0.231*time + 1.369*temp -2.813*tga
dta_model

plot(dta, dta_model)

library(Metrics)

rmse(dta, dta_model)

mape(dta, dta_model)

# 
# data_linearmodel=cbind(ca, ca_model, (ca-ca_model))   # exporting results in .csv format
# write.csv(data_linearmodel, file= "data_linearmodel.csv")


data_linearmodel = cbind(time, temp, tga, dta, dta_model, (dta - dta_model))
write.csv(data_linearmodel, file = "data_linearmodel.csv")
