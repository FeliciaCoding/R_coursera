# Check working directory 
getwd()
# check files 
dire()
# read files
my_data <- read.csv("hw1_data.csv")
# Q1: Extract the subset of rows of the data frame where Ozone values are above 31 
# and Temp values are above 90. 
# What is the mean of Solar.R in this subset?

# 1. take off all the NAs
good<- complete.cases(my_data$Ozone, my_data$Solar.R, my_data$Temp)
# 2. setting conditions and calculating the mean 
# setting conditions with `&`
mean( my_data$Solar.R [ good & my_data$Ozone > 31 & my_data$Temp > 90])

# Q2: What is the mean of "Temp" when "Month" is equal to 6?
# taking off NAs when you wanna use it as "conditions"
mean(my_data$Temp [my_data$Month == 6] )

# Q3: What was the maximum ozone value in the month of May (i.e. Month = 5)?
max(my_data$Ozone [good & my_data$Month == 5])

# Check if Git is installed on "terminal"
# $git -- version

# use "homebrew " to download Git
# $brew install git

# check again git version 
# $git version








