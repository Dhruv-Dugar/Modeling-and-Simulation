library(deSolve)
CSTR <- function(t, state, parameters) {
  with(as.list(c(state, parameters)), {
    dh =  a + b*h^0.5
    list(c(dh))
  })
}

parameters <- c(a = 3, b = -1)
state      <- c(h = 0)
time      <- seq(0, 200, by = 10)


Sol_cstr <- ode(t = time, y = state, parms = parameters, func = CSTR)
plot(Sol_cstr)
Sol_cstr
Sol_cstr[11,2] # height of the tank at 90 minutes is 9 m 

