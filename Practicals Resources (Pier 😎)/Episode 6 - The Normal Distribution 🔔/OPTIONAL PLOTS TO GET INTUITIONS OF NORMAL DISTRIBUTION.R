# PROBABILITY AND QUANTILE PLOTS FOR THE NORMAL DISTRIBUTION
# Completely optional script, this is just to get the intuitions
# PROBABILITY OF NORMAL DISTRIBUTION DISPLAY
# Parameters
mu <- 1
sigma <- 2
x_val <- 2

# Define range for the plot
x <- seq(mu - 4*sigma, mu + 4*sigma, length=1000)
y <- dnorm(x, mean=mu, sd=sigma)

# Plot normal distribution curve
plot(x, y, type="l", lwd=2, col="blue",
     main="P(X ≤ 2) for N(1, 2²)", 
     ylab="Density", xlab="X")

# Shade area representing P(X ≤ 2)
x_shade <- seq(min(x), x_val, length=500)
y_shade <- dnorm(x_shade, mean=mu, sd=sigma)
polygon(c(x_shade, x_val, min(x_shade)), c(y_shade, 0, 0), col="skyblue")

# Add vertical line at x=2
abline(v=x_val, col="red", lty=2, lwd=2)

# Compute probability
prob <- pnorm(x_val, mean=mu, sd=sigma)

# Add text showing the probability
text(x_val, max(y)*0.8, paste("P(X ≤ 2) =", round(prob,4)), pos=4, col="black")

# QUANTILE OF NORMAL DISTRIBUTION DISPLAY
# Parameters
mean <- 1
sd <- sqrt(3)
p <- 0.2
q <- qnorm(p, mean, sd)

# Range of values for x-axis
x <- seq(mean - 4*sd, mean + 4*sd, length=1000)

# Plot normal distribution curve
plot(x, dnorm(x, mean, sd), type="l", lwd=2, col="darkgreen",
     main="Quantile Visualization for N(1, 3)",
     ylab="Density", xlab="x")

# Shade area representing P(X < q) = 0.2
polygon(c(min(x), x[x <= q], q), 
        c(0, dnorm(x[x <= q], mean, sd), 0), 
        col="lightgreen", border=NA)

# Add vertical line at quantile
abline(v=q, col="red", lwd=2, lty=2)

# Annotate quantile
text(q, 0.02, labels=paste0("Quantile = ", round(q,3)), 
     pos=4, col="red", cex=1.1)

# Annotate area (probability)
text(mean - 2*sd, 0.04, labels=paste("P(X <= q) = 0.2"), 
     col="darkgreen", cex=1.1)