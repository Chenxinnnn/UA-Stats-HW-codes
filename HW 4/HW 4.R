#uniform
n <- 5
vector <- c()
x <- runif(n, 0, 1)
vector <- c(vector, x)
plot(ecdf(vector), cex = 0.6, col = "#666666", main = "n = 5")
curve(punif(x), add = TRUE, col = "#CC99FF", lwd = 2)

n <- 20
vector <- c()
x <- runif(n, 0, 1)
vector <- c(vector, x)
plot(ecdf(vector), cex = 0.6, col = "#666666", main = "n = 20")
curve(punif(x), add = TRUE, col = "#CC99FF", lwd = 2)

n <- 500
vector <- c()
x <- runif(n, 0, 1)
vector <- c(vector, x)
plot(ecdf(vector), cex = 0.6, col = "#666666", main = "n = 500")
curve(punif(x), add = TRUE, col = "#CC99FF", lwd = 2)

#exponential
n <- 5
vector <- c()
x <- rexp(n, rate = 3)
vector <- c(vector, x)
plot(ecdf(vector), cex = 0.6, col = "#666666", main = "n = 5")
curve(pexp(x, rate = 3), add = TRUE, col = "#CC99FF", lwd = 2)

n <- 20
vector <- c()
x <- rexp(n, rate = 3)
vector <- c(vector, x)
plot(ecdf(vector), cex = 0.6, col = "#666666", main = "n = 20")
curve(pexp(x, rate = 3), add = TRUE, col = "#CC99FF", lwd = 2)

n <- 500
vector <- c()
x <- rexp(n, rate = 3)
vector <- c(vector, x)
plot(ecdf(vector), cex = 0.6, col = "#666666", main = "n = 500")
curve(pexp(x, rate = 3), add = TRUE, col = "#CC99FF", lwd = 2)
	

#c
vector <- quakes[ ,4]
plot(ecdf(vector))

vector <- quakes[ ,4]
hist(vector)

mean(vector)
var(vector)

#d
vector <- quakes[ ,4]
plot(ecdf(vector))
beta <- mean(vector)/var(vector)
alpha <- mean(vector)^2/var(vector)
print(beta)
print(alpha)
curve(pgamma(x, shape = alpha, rate = beta), col = "#CC99FF", add= TRUE, lwd = 2)



