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





> Written by Dhruv Dugar on 13/02/2023