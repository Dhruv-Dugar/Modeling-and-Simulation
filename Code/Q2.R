library(deSolve)

m = 1000
mdot = 2
u = 100
a = 1
cp = 2000
t1 = 293
ts = 523
time = seq(0, 50000, by = 1)

tank_series <- function(t, state, parameters) {
  with(as.list(c(state, parameters)),{
    dta = massratio*(t1-ta) + h*(ts-t1)
    dtb = massratio*(ta-tb) + h*(ts-ta)
    dtg = massratio*(tb-tg) + h*(ts-tb)
    list(c(dta, dtb, dtg))
  })
}

parameters <- c(massratio = mdot/m, h = ((u*a)/(m*cp)))

state <- c(ta = 293, tb = 293, tg = 293)

tank_series_sol <- ode(t = time, y = state, parms = parameters, func = tank_series)

plot(tank_series_sol)

dim(tank_series_sol)

timetemp = 306.72

tank_series_sol[1643,]
# the time at 99% of the value is 1642s, ie 27.36mins
