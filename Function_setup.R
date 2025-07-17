# Function for store decks and functions like deal and shuffle in 
# another environment

setup <- function(deck) {
  DECK <- deck
  
  DEAL <- function() {
    card <- deck[1,]
    assign("deck", deck[-1,], envir = parent.env(environment()))
    card
  }
  
  SHUFFLE <- function() {
    ordere <- sample(1:length(DECK), size = length(DECK))
    assign("deck", DECK[ordere,], envir = parent.env(environment()))
  }
  
  list(deal = DEAL, shuffle = SHUFFLE)
}