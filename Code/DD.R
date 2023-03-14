x = c(20, 60, 100, 140, 180, 220, 260, 300, 340, 380)
y = c(0.18, 0.37, 0.35, 0.78, 0.56, 0.75, 1.18, 1.36, 1.17, 1.65)




non_linear_model = nls(y ~ c1 + c2*x^2 + c3*x^3, start = list(c1 = 0, c2 = 0, c3 = 0))
summary(non_linear_model)
coef(non_linear_model)






OF = function(C){
  optmodel = (C[1] + C[2]*x^2 + C[3]*x^3 - y)^2
  return(optmodel)
}
C= c(0, 0, 0)

d = nlminb(C, OF, lower = -Inf, upper = Inf)
d$par
d$objective
d$iterations
