# Modeling of Chemical Engineering Systems

## 1. Reacting Systems
## 2. Systems for Mass Transfers
## 3. Systems for Heat transfers
<br><br>

<strong>Mathematical Modeling:</strong> 
- Mathematical representaion of any model, and data analysis of the model.
- Comprises of data, equation and functions.
- There is response variable, predictor, and parameter


f(x,y,z) = 0 then we can evaluate it as y  = f(x,z)
Can be anything for the model parameter, like Heat transfer


$$Q = K * \frac{ΔT}{ΔX}$$

Now, in such a case, 

$$Q = f(K,ΔT,ΔX)$$

Number of Equations = N
Number of Variables = M

We then analyse what are the number of equations and variables, and then we can solve the system of equations.

## Degree Of Freedom = M - N

If <br>
&nbsp; 1. Number of variables > Number of equations -> Under Specified <br>
&nbsp; 2. Number of variables = Number of equations -> Well Specified <br>
&nbsp; 3. Number of variables < Number of equations -> Over Specified <br>

$$ Question - 1:  DOF Analysis$$


```Consider the perfectly mixed storage tank shown below. A liquid stream with volumetric rate F1 and densite ρ1 flows into the tank. The outlet stream has volumetric flow rate F0, and densite ρ0. Our objective is to develop a mathematical model for the variation of the tank holdip that is the volume (V) of the fluid in the system. Carry out the degree of freedom analysis for the system.```

(to be solved later)


# Classification of Model System

## Open System (Continous System)
 Has both mass and heat transfer

## Closed System (batch system)
Has only energy transfer
## Isolated System
No transfer of either mass or energy

In Chemical Engineering we are only concerned with Open Systems.

From the first law of thermodynamics, we know that the energy balance is given by

$$ dU = dQ + dW $$
Where, U is the internal energy, Q is the heat transfer, W is the work done.

So, we only deal with the energy balance equation, and the mass balance equation, and there is practically nothing which is an isolated system.


![](../Notes%20Assets/IMG_2658.jpeg)

If there is any variable which is not constant with time -> It means the system is an unsteady state. If there is a change in either of the variables with time, it is an unsteady state.

Example: Fick's Second Law of Diffusion (unsteady state)

$$ \frac{dC}{dt} = D \frac{d^2C}{dx^2} $$

Example: Fick's first law of Diffusion (steady state) 
(this is a simplified form of the above equation, as there is no change with time)

$$ \frac{dC}{dx} = -D \frac{dC}{dx} $$


Example: Newton's Law of Viscosity (this is also steady state fluid flow)

$$ τ = - μ\frac{dV}{dx} $$


` RULE OF THUMB: If there is a change in any variable with time, it is an unsteady state. If there is no change in any variable with time, it is a steady state. `


# Lumped v/s Distributed Model

## Lumped Model

 - There is no change with respect to space in x, y, z
- There will be a set of Ordinary Differential Equations (ODEs) which will be solved to get the solution


`Example: Mass Flow Rate: `
$$ \frac{d(ρV)}{dt} = ρ_fF_f - ρ_iF_i $$

- No spatial variation in temperature, pressure and concentration, only with time

## Distributed Model

- There is a change with respect to space in x, y, z
- Very fucked system of equations, with a lot of variables, and a lot of equations, and partial differential equations (PDEs) are used to solve the system of equations. Solving such systems is very difficult in these cases.
- Both time and spatial variation in flows and states (temperature/pressure and concentration)


` Example: Navier Stokes Equation: `
$$ \frac{\partial ρ}{\partial t} + \frac{\partial (ρV)}{\partial x}  + \frac{\partial (ρV)}{\partial y} + \frac{\partial (ρV)}{\partial z} = 0$$

Steps involved in Modelling and Simulation

- Model Development
- Model Analysis
- Model Optimisation

<br><br>

> Written by Dhruv Dugar on 13/02/2023