#b
n <- 100
x <- c(0,100,1)
a <- rnorm(n)
x[1] = 0

for (t in 2 : 101) 
x[t] <- 0.5 * x[t-1] + a[t]
plot(x)

#c
theta_vector <- c()
n <- 10 # k = 10
for ( N in 1 : 500 ) #N =500
{
x <- c(0, n, 1)
a <- rnorm(n + 1)
x[1] = 0

for (t in 2 : n+1) 
x[t] <- 0.5 * x[t-1] + a[t]

z <- 0
for (i in 2 : n+1)
{
z <- z + x[i - 1]*x[i] 	
}

theta <- z / sum(x ^ 2)
theta_vector <- c(theta_vector, theta)
}

hist(theta_vector)






theta_vector <- c()
n <- 100 # k = 100
for ( N in 1 : 500 ) #N =500
{
x <- c(0, n, 1)
a <- rnorm(n + 1)
x[1] = 0

for (t in 2 : n+1) 
x[t] <- 0.5 * x[t-1] + a[t]

z <- 0
for (i in 2 : n+1)
{
z <- z + x[i - 1]*x[i] 	
}

theta <- z / sum(x ^ 2)
theta_vector <- c(theta_vector, theta)
}

hist(theta_vector)






theta_vector <- c()
n <- 1000 # k = 1000
for ( N in 1 : 500 ) #N =500
{
x <- c(0, n, 1)
a <- rnorm(n + 1)
x[1] = 0

for (t in 2 : n+1) 
x[t] <- 0.5 * x[t-1] + a[t]

z <- 0
for (i in 2 : n+1)
{
z <- z + x[i - 1]*x[i] 	
}

theta <- z / sum(x ^ 2)
theta_vector <- c(theta_vector, theta)
}

hist(theta_vector)






theta_vector <- c()
n <- 5000 # k = 5000
for ( N in 1 : 500 ) #N =500
{
x <- c(0, n, 1)
a <- rnorm(n + 1)
x[1] = 0

for (t in 2 : n+1) 
x[t] <- 0.5 * x[t-1] + a[t]

z <- 0
for (i in 2 : n+1)
{
z <- z + x[i - 1]*x[i] 	
}

theta <- z / sum(x ^ 2)
theta_vector <- c(theta_vector, theta)
}

hist(theta_vector)



