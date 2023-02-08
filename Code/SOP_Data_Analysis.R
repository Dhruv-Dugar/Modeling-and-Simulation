# pairing the Recycled PVC data to see all the data at the same time

pairs(Recycled_PVC_Data)

#Finding statistical correlation amongst the data points
cor(Recycled_PVC_Data)


# Making Individual TGA and DTA plots for Recycled PVC wrt Temperature
plot(Recycled_PVC_Data$Temp, Recycled_PVC_Data$DTA, xlab = "Temperature (°C)", ylab = "DTA (uV)")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(100, 5, legend = c("Recycled PVC"), fill = c("black"))

plot(Recycled_PVC_Data$Temp, Recycled_PVC_Data$TGA, xlab = "Temperature (°C)", ylab = "TGA (mg)")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(50, 16, legend = c("Recycled PVC"), fill = c("black"))


# Making Individual TGA and DTA plots for Recycled PVC wrt Time
plot(Recycled_PVC_Data$Time, Recycled_PVC_Data$DTA, xlab = "Time (s)", ylab = "DTA (uV)")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(500, 5, legend = c("Recycled PVC"), fill = c("black"))



plot(Recycled_PVC_Data$Time, Recycled_PVC_Data$TGA, xlab = "Time (s)", ylab = "TGA (mg)")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(500, 16, legend = c("Recycled PVC"), fill = c("black"))


# pairing the Virgin PVC data
pairs(Virgin_PVC_Data)

#Finding statistical correlation amongst the data points
cor(Virgin_PVC_Data)



plot(Virgin_PVC_Data$Temp, Virgin_PVC_Data$DTA, xlab = "Temperature (°C)", ylab = "DTA (uV)")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(100, 0, legend = c("Virgin PVC"), fill = c("black"))


plot(Virgin_PVC_Data$Temp, Virgin_PVC_Data$TGA, xlab = "Temperature (°C)", ylab = "TGA (mg)")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(100, 15, legend = c("Virgin PVC"), fill = c("black"))



plot(Virgin_PVC_Data$Time, Virgin_PVC_Data$DTA, xlab = "Time (s)", ylab = "DTA (uV)")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(500, 0, legend = c("Virgin PVC"), fill = c("black"))


plot(Virgin_PVC_Data$Time, Virgin_PVC_Data$TGA, xlab = "Time (s)", ylab = "TGA (mg)")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(500, 15, legend = c("Virgin PVC"), fill = c("black"))


# Combined plot for Recycled and Virgin PVC TGA wrt Time
plot(Recycled_PVC_Data$Time, Recycled_PVC_Data$TGA, xlab = "Time (s)", ylab = "TGA (mg)", col="red")
lines(Virgin_PVC_Data$Time, Virgin_PVC_Data$TGA, col="black")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(50,14,legend = c("Recycled PVC Data", "Virgin PVC Data"), fill = c("red", "black"))


# Combined plot for Recycled and Virgin PVC DTA wrt to time
plot(Recycled_PVC_Data$Time, Recycled_PVC_Data$DTA, xlab = "Time (s)", ylab = "DTA (uV)", col="red")
lines(Virgin_PVC_Data$Time, Virgin_PVC_Data$DTA, col="black")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(500, 5,legend = c("Recycled PVC Data", "Virgin PVC Data"), fill = c("red", "black"))


# Combined plot for Recycled and Virgin PVC DTA wrt Temperature
plot(Recycled_PVC_Data$Temp, Recycled_PVC_Data$DTA, xlab = "Temperature (°C)", ylab = "DTA (uV)", col="red")
lines(Virgin_PVC_Data$Temp, Virgin_PVC_Data$DTA, col="black")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(50,7,legend = c("Recycled PVC Data", "Virgin PVC Data"), fill = c("red", "black"))


# Combined plot for Recycled and Virgin PVC TGA wrt Temperature
plot(Recycled_PVC_Data$Temp, Recycled_PVC_Data$TGA, xlab = "Temperature (°C)", ylab = "TGA (mg)", col="red")
lines(Virgin_PVC_Data$Temp, Virgin_PVC_Data$TGA, col="black")
grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(50,14,legend = c("Recycled PVC Data", "Virgin PVC Data"), fill = c("red", "black"))





# plot_data <- function(A, B, C, D){
#   plot(A, Recycled_PVC_Data$TGA, xlab = "Time (s)", ylab = "TGA (mg)", col="red")
#   lines(Virgin_PVC_Data$Time, Virgin_PVC_Data$TGA, col="black")
#   grid(nx = NULL, ny = NULL, col="lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
#   legend(50,14,legend = c("Recycled PVC Data", "Virgin PVC Data"), fill = c("red", "black"))
# }


plot(Recycled_PVC_Data$Temp, Recycled_PVC_Data$`Change in Mass`, xlab = "Temperature (°C)", ylab = "Change in Mass(mg)", ylim = c(-0.05,0.02), col = "red")
points(Virgin_PVC_Data$Temp[1:1704], Recycled_PVC_Data$`Change in Mass`[1:1704], col = "black")
grid(nx = NULL, ny = NULL, col = "lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(50, -0.03, legend = c("Recycled PVC Data", "Virgin PVC Data"), fill = c("red", "black"))



plot(Recycled_PVC_Data$Time, Recycled_PVC_Data$`Change in Mass`, xlab = "Time (s)", ylab = "Change in Mass(mg)", ylim = c(-0.05,0.02), col = "red")
points(Virgin_PVC_Data$Time[1:1704], Recycled_PVC_Data$`Change in Mass`[1:1704], col = "black")
grid(nx = NULL, ny = NULL, col = "lightgray", lty = "dotted", lwd = par("lwd"), equilogs = FALSE)
legend(50, -0.03, legend = c("Recycled PVC Data", "Virgin PVC Data"), fill = c("red", "black"))

