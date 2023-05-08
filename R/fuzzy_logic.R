install.packages("FuzzyToolkitUoN")


# load the  package
library(FuzzyToolkitUoN)


# Define the fuzzy sets
cold <- trapmf(x = c(0, 0, 20, 25), name = "Cold")
hot <- trapmf(x = c(20, 25, 30, 30), name = "Hot")


# plot the fuzzy sets
plot(cold, ylim = c(0, 1), col = "blue", main = "Fuzzy sets for temperature")
lines(hot, col = "red")


# determine the degree of membership of the temperature 
temperature <- 25
degree_cold <- mfuzz(temperature, cold)
degree_hot <- mfuzz(temperature, hot)


# make a decision based on the degree of membership values
ifelse(degree_hot > degree_cold, "Hot", "Cold")

