# Function that play the whole game, taking the three symbols, 
# calculate the prize and showing the result

play <- function(n) {
  symbols <- get_symbols(n = n)
  datass <- data.frame(w1 = symbols[,1], w2 = symbols[,2],
             w3 = symbols[,3], prize = NA)
  datass$prize <- apply(datass[, c("w1", "w2", "w3")], 1, scoreV2)
  datass
}