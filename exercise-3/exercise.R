# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
employees <- paste("Employee ", 1:100)

# Create a vector of 2014 salaries using the runif function
sal2014 = runif(100, min=1000, max=10000)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires (use runif again)
sal2015 = runif(100, min=-1000, max=10000)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries = data.frame('sal.2014'=sal2014, 'sal.2015'=sal2015)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries.raises <- salaries$sal.2014 - salaries$sal.2015

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries.raises <- salaries$sal.2015 > salaries$sal.2014

# Retrieve values from your data frame to answer the following questions:

# What was the 2015 salary of employee 57
employee57 = salaries[57,'sal.2015']

# How many employees got a raise?
raises = nrow(salaries[salaries$raises == TRUE,])

# What was the value of the highest raise?
maximum = max(salaries.raises)

# What was the name of the employee who recieved the highest raise?


# What was the largest decrease in salaries between the two years?


# What was the name of the employee who recieved largest decrease in salary?


# What was the average salary increase?


### Bonus ###

# Write a .csv file of your salaries to your working directory


# For people who did not get a raise, how much money did they lose?


# Is that what you expected them to lose?

### Double Bonus (no answer given) ###

# Repeat the above experiment 100 times, tracking the loss each time.
# Does the average loss equal what you expect?
# What about 10,000 times?
