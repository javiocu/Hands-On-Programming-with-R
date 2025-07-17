# Deal function take the top card from the deck

deal <- function() {
  card <- deck[1,]
  assign("deck", deck[-1,], envir = globalenv())
  card
}