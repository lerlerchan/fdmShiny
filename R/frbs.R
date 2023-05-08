install.packages("frbs2")

# Load the frbs2 package
library(frbs2)

# Create some sample data
x1 <- seq(-1, 1, length.out = 100)
x2 <- seq(-1, 1, length.out = 100)
y <- sin(x1) + cos(x2) + rnorm(100, 0, 0.1)

# Define the input and output variables
inputs <- data.frame(x1, x2)
outputs <- data.frame(y)

# Create a fuzzy rule-based system object
frbs <- frbs.learn(inputs, outputs, type = "mamdani", control = list(num.labels = 3))

# Generate fuzzy rules
frbs <- rulegen(frbs)

# Evaluate the fuzzy rule-based system on new data
newdata <- data.frame(x1 = 0.5, x2 = -0.5)
frbs.predict(frbs, newdata)
