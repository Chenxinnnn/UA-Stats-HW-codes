#CLT
Number_Trials <- 5000
n <- 10

Sum_Vector <- c()
Sum_Vector_Normalized <- c()
for(i in 1: Number_Trials)

{
x <- rpois(n, 0.5)
S <- sum(x)
S_norm <- (S - 0.5 * n)/sqrt(n / 2)
Sum_Vector <- c(Sum_Vector, S)
Sum_Vector_Normalized <- c(Sum_Vector_Normalized, S_norm)
}

hist(Sum_Vector, freq = FALSE)

hist(Sum_Vector_Normalized)
curve(dnorm, add = TRUE)

#LLN
Number_Trails <- 5000
n <- 5

Sum_Vector <- c()
Sum_Vector_Normalized <- c()
for(i in 1: Number_Trials)

{
x <- rpois(n, 0.5)
S <- sum(x)
S_norm <- S/n
Sum_Vector_Normalized <- c(Sum_Vector_Normalized, S_norm)
}

hist(Sum_Vector_Normalized, xlim = range(0, 1))

#average
Number_Trials <- 5000
n <- 5

Mean_Vector <- c()
Mean_Vector_Normalized <- c()
for(i in 1: Number_Trials)

{
x <- rpois(n, 0.5)
#S <- sum(x)
#s <- S/n
s <- mean(x)
s_norm <- (s-0.5) * sqrt(2*n)

Mean_Vector <- c(Mean_Vector, s)
Mean_Vector_Normalized <- c(Mean_Vector_Normalized, s_norm)
}

hist(Mean_Vector_Normalized, freq = FALSE)
curve(dnorm, add = TRUE)

hist(Mean_Vector, freq = FALSE)

#Cauchy
Number_Trials <- 5000
n <- 1000

Mean_Vector <- c()
for(i in 1: Number_Trials)

{
x <- rcauchy(n)
s <- mean(x)
Mean_Vector <- c(Mean_Vector, s)
}

hist(Mean_Vector)
