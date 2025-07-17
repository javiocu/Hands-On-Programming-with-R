score <- function(symbols) {
  # Identify the case
  same <- symbols[1] == symbols[2] & symbols[2] == symbols[3]
  bars <- symbols %in% c("B", "BB", "BBB")
  
  # Reset the prize
  prize <- 0
  
  # Get prize
  if (same) {
    payouts <- c("DD" = 100, "7" = 80, "BBB" = "40", "BB" = 25,
                 "B" = 10, "C" = 10)
    prize <- as.integer(unname(payouts[symbols[1]]))
  } else if (all(bars)) {
    prize  <- 5
  } else {
    cherries <- sum(symbols %in% "C")
    prize <- c(0, 2, 5)[cherries + 1]
  }
  
  # Adjust the prize because the diamonds
  diamonds <- sum(symbols %in% "DD")
  prize * 2 ^ diamonds
}
 

