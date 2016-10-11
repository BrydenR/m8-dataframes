# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
seahawks <- c(12, 3, 17, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
points <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
data = data.frame(points.scored=seahawks, points.allowed=points)

# Create a new column "diff" that is the difference in points
for(index in 1:length(seahawks)) {
  data$diff[index] <- data[index, 'points.scored']-data[index,'points.allowed']
}
# Create a new column "won" which is TRUE if the Seahawks wom
# dat$won <- data$diff > 0
for(index in 1:length(seahawks)) {
  data$won[index] <- data[index, 'diff'] > 0
}

# Create a vector of the opponents
opponents <- c('Dolphins', 'Rams', '49ers', 'Jets')

# Assign your dataframe rownames of their opponents
data$opponent = opponents
