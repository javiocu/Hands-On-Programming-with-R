# Exercise 6.1 (Deal a Card) Complete the following code to make a
# function that returns the first row of a data frame

# Exercise 8.3 (Rewrite shuffle) Rewrite shuffle so that it replaces 
# the copy of deck that lives in the global environment with a shuffled 
# version of DECK, the intact copy of deck that also lives in the global 
# environment. The new version of shuffle should have no arguments and 
# return no output.


shuffle <- function() {
  ordere <- sample(c(1:length(deck$face)), size = length(deck$face))
  assign("deck", deck[ordere,], envir = globalenv())
  }

