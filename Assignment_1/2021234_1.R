###### Assignment-1 #######

rm(list = ls())
set.seed(12345)

### Question-1 ###

### (a) ###
# p = 0.8
n <- 20 # No. of trials
pa <- 0.8 # Given probability
t <- 1000 # No. of simulations
alt.bernoulli.data_a <- rbinom(n=1000, size=20, prob=0.8)
hist(alt.bernoulli.data_a, breaks=seq(0,20,1), main="Histogram for p = 0.8",
     xlab="Number of Arrivals", ylab = "Frequency", col = "skyblue", border="black")
sum(alt.bernoulli.data_a)
summary(alt.bernoulli.data_a)

### (b) ###
# p = 0.5
n <- 20 # No. of trials
pb <- 0.5 # Given probability
t <- 1000 # No. of simulations
alt.bernoulli.data_b <- rbinom(n=1000, size=20, prob=0.5)
hist(alt.bernoulli.data_b, breaks=seq(0,20,1), main="Histogram for p = 0.5",
     xlab = "Number of Arrivals", ylab="Frequency", col="lightgreen", border="black")
sum(alt.bernoulli.data_b)
summary(alt.bernoulli.data_b)

### comparing the plots of (a) and (b) ###
par(mfrow = c(1, 2))

hist(alt.bernoulli.data_a, breaks=seq(0,20,1), main="Histogram for p = 0.8",
     xlab="Number of Arrivals", ylab = "Frequency", col = "skyblue", border="black")

hist(alt.bernoulli.data_b, breaks=seq(0,20,1), main="Histogram for p = 0.5",
     xlab = "Number of Arrivals", ylab="Frequency", col="lightgreen", border="black")

par(mfrow = c(1,1))



