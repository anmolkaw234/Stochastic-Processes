### Question-2 ###
### (a) ###
rm(list = ls())
set.seed(12345)
la <- 5 # value of lambda
t <- 2 # Time interval
n <- 1000 # number of simulations

alt.poisson.data_a <- rpois(n=1000,lambda=la*t)
hist(alt.poisson.data_a, breaks = max(alt.poisson.data_a) - min(alt.poisson.data_a) + 1, probability = TRUE,
     main =  "Density of Number of Arrivals until time t for lambda = 5",
     xlab = "Number of arrivals", ylab = "Density", col = "lightblue", border = "black")
mean_a <- mean(alt.poisson.data_a)
cat("Mean Value(a) = ", mean_a, "\n")
### (b) ###
lb <- 15
t <- 2
n <- 1000

alt.poisson.data_b <- rpois(n=1000, lambda=lb*t)
hist(alt.poisson.data_b, breaks = max(alt.poisson.data_b) - min(alt.poisson.data_b) + 1, probability = TRUE,
     main = "Density of Number of Arrivals until time t for lambda = 15",
     xlab = "Number of arrivals", ylab = "Density", col = "lightcoral", border = "black")
mean_b <- mean(alt.poisson.data_b)
cat("Mean Value(b) = ", mean_b, "\n")

### comparing the plots of (a) and (b) ###

par(mfrow = c(1, 2))

hist(alt.poisson.data_a, breaks = max(alt.poisson.data_a) - min(alt.poisson.data_a) + 1, probability = TRUE,
     main =  "Density of Number of Arrivals until time t for lambda = 5",
     xlab = "Number of arrivals", ylab = "Density", col = "lightblue", border = "black")

hist(alt.poisson.data_b, breaks = max(alt.poisson.data_b) - min(alt.poisson.data_b) + 1, probability = TRUE,
     main = "Density of Number of Arrivals until time t for lambda = 15",
     xlab = "Number of arrivals", ylab = "Density", col = "lightcoral", border = "black")

par(mfrow = c(1, 1))

### (c) ###
la <- 5
n <- 1000
first_arrival <- rexp(n=1000, rate=la)
hist(first_arrival, probability = TRUE, breaks = 50,
     main = "Density of First Inter-arrival Time and Exponential PDF for lambda = 5",
     xlab = "Inter-arrival time", ylab = "Density", col = "lightgray", border = "black")
curve(la * exp(-la * x), add = TRUE, col = "blue", lwd = 2)
legend("topright", legend = c("Simulated Data", "Exponential PDF"), col = c("lightgray", "blue"), lwd = 2, bty = "n")


lb <- 15
n <- 1000
first_arrival <- rexp(n=1000, rate=lb)
hist(first_arrival, probability = TRUE, breaks = 50,
     main = "Density of First Inter-arrival Time and Exponential PDF for lambda = 15",
     xlab = "Inter-arrival time", ylab = "Density", col = "lightgreen", border = "black")
curve(lb * exp(-lb * x), add = TRUE, col = "red", lwd = 2)
legend("topright", legend = c("Simulated Data", "Exponential PDF"), col = c("lightgreen", "red"), lwd = 2, bty = "n")

