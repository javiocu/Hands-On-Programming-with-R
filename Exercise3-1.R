# Let x3 be the following vector:
x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)

# Imagine what a histogram of x3 would look like. Assume that the histogram has 
# a bin width of 1. How many bars will the histogram have? Where will they 
# appear? How high will each be?

qplot(x3, binwidth=1)