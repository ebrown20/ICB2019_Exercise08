# Define data frame to read from
setwd("/Users/patriciabrown/BioComp/Exercise08/ICB2019_Exercise08")
file_name <- "UWvMSU_1-22-13.txt"
dat <- read.table(file = file_name, header = TRUE, sep = "\t")

# Create list of x values for plot (starting at zero)
x_vals <- c(0, dat[ ,1])

# Empty data frame to store UW and MSU scores in (starting at zero)
MSU_scores <- data.frame(0)
UW_scores <- data.frame(0)

# Each team starts with zero points
current_MSU_points <- 0
current_UW_points <- 0

# Loop through each team and add points accordingly
size <- nrow(dat)
for(i in 1:size) {
  if(dat[i,2] == "MSU") {
    current_MSU_points <- current_MSU_points + dat[i,3]
  }
  if(dat[i,2] == "UW") {
    current_UW_points <- current_UW_points + dat[i,3]
  }
  # Add calculated scores to correct data frame
  MSU_scores[i+1] <- current_MSU_points
  UW_scores[i+1] <- current_UW_points
}

# Plot MSU scores in blue
plot(x_vals, MSU_scores, type = "l", col = "blue", xlab = "Time in Minutes", ylab = "Points")
#Plot UW scores in black
lines(x_vals, UW_scores, type = "l", col = "black")
# Add a legend
legend(25,25,legend=c("MSU scores","UW scores"),col= c("blue","black"), lty = 1)
