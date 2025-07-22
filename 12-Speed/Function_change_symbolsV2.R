
vec <- c("DD", "C", "7", "B", "BB", "BBB", "0")
vec <- rep(vec, 20000000)


change_symbolsV2 <- function(vec) {
  valor <- c("DD" = "joker", "C" = "ace", "7" = "king",
           "B" = "queen", "BB" = "jack", "BBB" = "ten", "0" = "nine")
  
  unname(valor[vec])
}

vecv2 <- system.time(change_symbolsV2(vec))
vecv2