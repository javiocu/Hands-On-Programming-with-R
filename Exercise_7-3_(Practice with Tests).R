# Exercise 7.3 (Practice with Tests) If you think you have the hang 
# of logical tests, try converting these sentences into tests 
# written with R code.
#  - Is w positive?
#  - Is x greater than 10 and less than 20?
#  - Is object y the word February?
#  - Is every value in z a day of the week?


w <- c(-1, 0, 1)
x <- c(5, 15)
y <- "February"
z <- c("Monday", "Tuesday", "Friday")

w > 0
x > 10 & x < 20
y == "February"
semana = c("Monday","Tuesday","Wednesday","Thursday",
  "Friay","Saturday","Sunday")

all(z %in% semana)
