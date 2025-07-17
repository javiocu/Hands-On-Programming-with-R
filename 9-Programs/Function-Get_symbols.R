## The function get_symbols shows a three combo symbols of the options

get_symbols <- function() {
  symbols <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  wheel <- sample(symbols, 3, replace = TRUE,
                  prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52)
                  )
  wheel
}