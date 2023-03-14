pr= c(0.46, 0.53, 0.63, 0.74, 4.2)
nu= c(24.8, 26.5, 28.5, 30, 60)


# nu = c1*pr^0.28   given mathematical function for parameter optimization

OF= function(C1){
     OF= (C1*pr^0.28 - nu)^2
     return(OF)
    
}

C1= 0
optimized_model=nlminb(C1, OF, lower =  -Inf, upper = Inf)
optimized_model$par
optimized_model$objective
optimized_model$iterations
