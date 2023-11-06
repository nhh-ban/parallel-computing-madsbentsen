
library(tictoc)

# Function to source a script and measure its execution time
time_script <- function(script_path) {
  tic(paste("Timing", script_path))
  source(script_path)
  toc()
}

# Define the paths to the scripts
script_paths <- c(
  "Scripts/method1.r",
  "Scripts/method2.r",
  "Scripts/method3.r"
)

# Run and time each script
lapply(script_paths, time_script)


# Analysis of Execution Times:

# - Original script (method1): 65.75 seconds
# - Parallel loop script (method2): 46.523 seconds
# - Parallel function script (method3): 39.116 seconds

# Script 3 is the fastet of the three. This efficiency is due to mroe granular parallelism, allowing
# for better CPU utilization during the dcomputationally intesive simulations. 
