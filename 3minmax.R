# Define the data
data <- c(200, 300, 400, 600, 1000)
# Calculate the mean and standard deviation
mean_val <- mean(data)
sd_val <- sd(data)
# Apply z-score normalization
z_score_normalized <- (data - mean_val) / sd_val
# Print the result
z_score_normalized
# Define the data
data <- c(200, 300, 400, 600, 1000)
# Define the min and max values
min_val <- min(data)
max_val <- max(data)
# Apply min-max normalization
min_max_normalized <- (data - min_val) / (max_val - min_val)
# Print the result
min_max_normalized
