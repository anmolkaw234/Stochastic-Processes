rm(list = ls())
set.seed(12345)

# (a)
p_a <- 0.5
n_steps <- 500
i <- 0  
steps_a <- ifelse(runif(n_steps) < p_a, 1, -1)
position_a <- cumsum(steps_a) + i
hist(position_a, breaks = 30, main='Histogram of Random Walk with p=0.5', xlab='Final Position', ylab='Frequency', col = "green")
simulated_probability <- mean(steps_a == 1)
simulated_probability


# (b)
p_b <- 0.8
steps_b <- ifelse(runif(n_steps) < p_b, 1, -1)
position_b <- cumsum(steps_b) + i
hist(position_b, breaks = 30, main = "Histogram of Random Walk with p=0.8", xlab = "Step", ylab ="Position", col = "red")
simulated_probability <- mean(steps_b == 1)
simulated_probability

# Comparison of plots in (a) and (b)
par(mfrow = c(1, 2))
hist(position_a, breaks = 30, main='Histogram of Random Walk with p=0.5', xlab='Step', ylab='Position', col = "green")
hist(position_b, breaks = 30, main = "Histogram of Random Walk with p=0.8", xlab = "Step", ylab ="Position", col = "red")
par(mfrow = c(1, 1))

# (c)
n_simulations <- 1000
final_positions <- numeric(n_simulations)
p =0.8


for (j in 1:n_simulations) {
  steps <- ifelse(runif(n_steps) < p, 1, -1)
  final_positions[j] <- sum(steps)
}


hist(final_positions, breaks=30, main='Histogram of Final Positions for 1000 Simulations', xlab='Final Position', ylab='Frequency', col = "purple")

mean_final_position <- mean(final_positions)
sd_final_position <- sd(final_positions)

list(mean = mean_final_position, sd = sd_final_position)

# Comparing the plots of part (b) and (c)
par(mfrow = c(1, 2))
hist(position_b, breaks = 30, main = "Histogram of Random Walk with p=0.8", xlab = "Step", ylab ="Position", col = "red")
hist(final_positions, breaks=30, main='Histogram of Final Positions for 1000 Simulations', xlab='Final Position', ylab='Frequency', col = "purple")
par(mfrow = c(1, 1))
















