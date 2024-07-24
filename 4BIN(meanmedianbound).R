ht\tps://github.com/Girija911/Compiler-design-192211932
q()
# Initial data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
# Sort the data
data <- sort(data)
# Number of bins
num_bins <- 5
bin_size <- ceiling(length(data) / num_bins)
# Create bins
bins <- split(data, ceiling(seq_along(data) / bin_size))
# Smoothing functions
smooth_bin_mean <- function(bins) unlist(lapply(bins, function(bin) rep(mean(bin), length(bin))))
smooth_bin_median <- function(bins) unlist(lapply(bins, function(bin) rep(median(bin), length(bin))))
smooth_bin_boundaries <- function(bins) unlist(lapply(bins, function(bin) sapply(bin, function(x) if (abs(x - min(bin)) < abs(x - max(bin))) min(bin) else max(bin))))
# Apply smoothing
smoothed_mean <- smooth_bin_mean(bins)
smoothed_median <- smooth_bin_median(bins)
smoothed_boundaries <- smooth_bin_boundaries(bins)
# Print results
cat("Smoothed Data by Bin Mean:\n", smoothed_mean, "\n")
cat("Smoothed Data by Bin Median:\n", smoothed_median, "\n")
cat("Smoothed Data by Bin Boundaries:\n", smoothed_boundaries, "\n")
