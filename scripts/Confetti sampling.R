# KSM721 - Week 1
# Quadrat sampling and population estimation
# Confetti sampling activity

# we sprinkled confetti in a 400 x 200 cm rectangle. We then made 10 x 10 cm quadrats. The task was to estimate the number of confetti in the rectangle. 
# Number of confetti in each quadrat (sample data)
x <- c(4, 2, 5, 2, 5, 4, 11, 5, 9, 7, 2, 1, 7, 1, 17, 3, 17, 3, 0, 9, 4, 12, 2, 8, 0, 10, 2, 4, 0, 3)

# Number of samples
n <- length(x)
print(n)

# Histogram
hist(x,
     xlab = "Confetti per quadrat",
     main = "Histogram of confetti distribution",
     col = "lightblue")

# Mean line
abline(v = mean(x),
       col = "red",
       lwd = 2)

# Mean confetti per quadrat
mean_x <- mean(x)
print(mean_x)

# Variance and standard deviation
variance_x <- var(x)
sd_x <- sd(x)

print(variance_x)
print(sd_x)

d <- density(x)
str(d)
# Density plot
plot(density(x),
     main = "Probability density function")

# Total quadrats in rectangle
total_quadrats <- 800

# Estimated total confetti
total_estimate <- mean_x * total_quadrats
print(total_estimate)

# Standard error
standard_error <- sd_x / sqrt(n)

# Standard error for total estimate
total_standard_error <- total_quadrats * standard_error

print(total_standard_error)

# Final estimate
cat("Estimated total confetti:",
    total_estimate,
    "+/-",
    total_standard_error)
