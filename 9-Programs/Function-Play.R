# Function that play the whole game, taking the three symbols, 
# calculate the prize and showing the result

play <- function() {
  get_symbols <- function() {
    symbols <- c("DD", "7", "BBB", "BB", "B", "C", "0")
    symbols <- sample(symbols, 3, replace = TRUE,
                    prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52)
    )
    print(symbols)
  }
  list(symbols = get_symbols)
}