# component mass-balance equation (1st-order, muti-variable, linear ODE for tank-series model)

library(deSolve)
CSTR_series <- function(t, state, parameters) {
  with(as.list(c(state, parameters)), {
    dca1 = a+ b*ca1+c*(ca1*cb1)                 # ODE form for tank-1, A-component 
    dcb1 = d+ b*cb1+c*(ca1*cb1)                # ODE form for tank-2, B-component 
    dca2 = -b*ca1+ b*ca2+c*(ca2*cb2)            # ODE form for tank-1, A-component 
    dcb2 = -b*cb1+ b*cb2+c*(ca2*cb2)            # ODE form for tank-2, B-component 
    list(c(dca1, dcb1, dca2, dcb2)) 
  })
}
parameters <- c(a = 2, b = -0.5, c= -0.3, d= 2)   # a, b, c, d are the parameters calculated for given data (i.e. V, Caf, Ff, k)
state      <- c(ca1 = 2, cb1=2, ca2= 0, cb2= 0)   # initial conditions for tank-1 (Ca1, cb1) and tank-2 (ca2, cb2) 
time      <- seq(0, 40, by = 1)


Sol_cstr_series <- ode(t = time, y = state, parms = parameters, func = CSTR_series)
plot(Sol_cstr_series)
Sol_cstr_series
plot(Sol_cstr_series)
Sol_cstr_series[11, 2]   # predict the concentration of "Ca1" at 10th minutes.
Sol_cstr_series[11, 4]   # predict the concentration of "Cb2" at 10th minutes.

