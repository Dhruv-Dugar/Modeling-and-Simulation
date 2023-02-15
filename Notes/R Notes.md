# CHE F418 - MODELING AND SIMULATION IN CHEMICAL ENGINEERING
# Data Modeling With R

## Setting variables:

```{r}
a = c(1:5)
```
Output:
Array with numbers 1 to 5 

```{r}
b = c(2,7,8,3,4)
```

Output:
Array with numbers 2,7,8,3,4

```{r}
c  = c("CHE")
```

Output: 
Charecter storing the string "CHE"

## Finding the data type of a variable:

```{r}
typeof(a)
```

Output:
"integer"

```{r}
typeof(c)
```

## cbind function

Cbind : Combine R Objects by Rows/Cols

Takes a sequence of vector/marix/df arguments and combines by cols or rows.

```{r}
a = c(1:5)
b = c(2,7,8,3,4)
cbind(a,b)
```

Output:
Combines the two vectors a and b by cols

![](../Notes%20Assets/Screenshot%202023-02-13%20at%202.34.48%20PM.png)

## making matrices

```{r}
a = matrix(1:9, nrow = 3, ncol = 3)
```
Output:

```     
        [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
```

## Some common Statistical functions and their usage

- Histogram
    - hist(a)

- Boxplot
    - boxplot(a)

- Mean
    - mean(a)

- Median
    - median(a)

- Standard Deviation
    - sd(a)

## Regression Analysis

- Linear Regression
    - model1 = lm(a~b)

Now to analyse the mdoel, we use the function anova/summary

- anova(model1)
- summary(model1)



## Importing data from excel

```{r}
library(readxl)
Chernobyl_Chemical_Radiation <- read_excel("ModSim/R/Data/Chernobyl_ Chemical_Radiation.xlsx")
View(Chernobyl_Chemical_Radiation)
```

(there is a method to do it via GUI, just click on the Import dataset icon, from Excel, and then select the file)


To view the imported data

- View(Chernobyl_Chemical_Radiation)


To view specific portion of the data

- View(Chernobyl_Chemical_Radiation[1:10,1:5])



> Written by Dhruv Dugar on 13/02/2023