# Exercise 6: Popular Baby Names Over Time

# Read in the female baby names csv file into a variable called `female.names`
female.names <- read.csv("~/info201/m8-dataframes/exercise-6/data/female_names.csv", stringsAsFactors = FALSE)

# Create a vector `year` as the year column of the dataset
year <- as.vector(female.names['year'])

# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name <- as.vector(female.names['name'])

# Create a vector `prop` as the proportion column of the dataset
prop <- as.vector(female.names['prop'])

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- as.vector(name[year == '2013'])

# Create a vector `prop.2013` as the your prop vector where your year vector is 2013
prop.2013 <- as.vector(prop[year == '2013'])

# What was the most popular female name in 2013?
most.popular.name.2013 <- names.2013[prop.2013 == max(prop.2013)]

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year){
  name <- as.vector(female.names['name'])
  names.year <- as.vector(name[year == my.year])
  prop.year <- as.vector(prop[year == my.year])
  return(paste(names.year[prop.year == max(prop.year)], " was the most popular name in ", my.year))
}

# What was the most popular female name in 1994?
most.popular.name.1994 = MostPopular('1994')

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(my.name, my.year) {
  
  prop.year <- as.vector(female.names[female.names['name'] == name && female.names[year] == my.year])
  return(paste(name, " was ", prop.year, " in ", my.year))
}
# How popular was the name 'Laura' in 1995
Laura.1995 = HowPopular('Laura', '1995')
