rm(list = ls())
set.seed(123)
P <- matrix(c(
  0.5, 0.3, 0, 0.2,
  0.2, 0.5, 0.1, 0.2,
  0.1, 0.3, 0.3, 0.3,
  0, 0.2, 0.3, 0.5
), nrow=4, byrow=TRUE)
matrix_power <- function(mat, n) {
  if(n == 1) {
    return(mat)
  } else {
    return(mat %*% matrix_power(mat, n-1))
  }
}
P_20 <- matrix_power(P, 20)
P_5 <- matrix_power(P, 5)
# (a)
#State of Markov Chain after 20 minutes
print(P_20)
prob_a <- P_20[1, 4]
print(paste(prob_a))
# (b)
# State of Markov Chain after 25 minutes
print(P_5)
prob_b <- P_5[4, 4]
print(paste(prob_b))
# (c)
A <- t(P) - diag(4)
A[4,] <- rep(1, 4)
b <- c(rep(0, 3), 1)
pi <- solve(A, b)
# Stationary Distribution
print(pi)
# (d)
# Limiting Distribution
print(pi)

