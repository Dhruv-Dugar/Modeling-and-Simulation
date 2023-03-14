# component mass-balance equation (1st-order, single-variable (Ca), linear ODE form)
library(deSolve)
CSTR <- function(t, state, parameters) {
  with(as.list(c(state, parameters)), {
    dca =  a + b*ca     # Simple form of derived ODE for CSTR
    list(c(dca))
  })
}


parameters <- c(a = 0.8, b = -0.7)  # a and b are calculated as per given V, Ff, Caf and k
state      <- c(ca = 2)
time      <- seq(0, 10, by = 1)


Sol_cstr <- ode(t = time, y = state, parms = parameters, func = CSTR)
Sol_cstr
plot(Sol_cstr)
Sol_cstr[10, 2]   # predict the concentration at 9th minutes.

# as per the plot it seems after 7 minutes the CSTR system reached to a steady-state conditions

