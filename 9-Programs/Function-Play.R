# Function that play the whole game, taking the three symbols, 
# calculate the prize and showing the result

play <- function() {
  symbols <- get_symbols()
  print(symbols)
  score(symbols)
}