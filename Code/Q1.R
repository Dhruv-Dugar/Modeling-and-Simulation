# inputting values of x1
x1 = c(0.0426, 0.0817, 0.1177, 0.1510, 0.2107, 0.2624, 0.3472, 0.4158)
# computing values of x2
x2 = 1 - x1
# inputting valuyes of He
he = c(-23.3, -45.7, -66.5, -86,6, -118.2, -144.6, -176.6, -195.7)

# setting objective function
OF = function(C){
  model = (C[1]*x1*x2 +C[2]*x1^2*x2+C[3]*x1^3*x2 - he)^2
  return(model)
}

# setting initial values of C
C = c(0,0,0)

# using R optimiser
d = nlminb(C, OF, lower = -Inf, upper = Inf)

# finding all the parameters
d$par

# finding value of objective function
d$objective

# seeing number of iterations to calculate min value of OF
d$iterations

# setting value of C according to the model
C = d$par

# using a function to find the value of HE at given value of x1
final_model = function(x){
  # calculating x2
  xsecond = 1 - x
  
  # formula for HE
  value = C[1]*x*xsecond + C[2]*x^2*xsecond + C[3]*x^3*xsecond
  return(value)
}

# calling function to compute value of HE
final_model(0.65)
final_model(0.85)
