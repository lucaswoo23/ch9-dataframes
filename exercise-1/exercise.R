### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
                           # Hint: google "Seahawks scores", or check the football database:
                           # http://www.footballdb.com/teams/nfl/seattle-seahawks/results
                           # here 'Result' displays scores, 'L' stands for loss, 'W' for win

points.for <- c(9, 12, 27, 46, 15)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 5 games
points.against <- c(17, 9, 33, 18, 10)

# Combine your two vectors into a dataframe
scores <- data.frame(points.for, points.against)

# Create a new column "diff" that is the difference in points
scores <- data.frame(scores, "diff"= scores$points.for - scores$points.against)
#alternative syntax
scores$new <- scores$points.against - scores$points.for 

# Create a new column "won" which is TRUE if the Seahawks won
scores <- data.frame(scores, "won" = (points.for > points.against))

# Create a vector of the opponents
opponents <- c("Green Bay", "San Francisco", "Tennessee", "Indianapolis", "LA Rams")

# Add the vector of opponents into the data frame
scores <- data.frame(scores, opponents)
