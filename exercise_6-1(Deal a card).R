# Exercise 6.1 (Deal a Card) Complete the following code to make a
# function that returns the first row of a data frame

shuffle <- function(cards) {
  ordere <- sample(c(1:52), size = 52)
  cards[ordere,]
}