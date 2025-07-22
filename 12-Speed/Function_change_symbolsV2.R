
change_symbolsV2 <- function(vec) {
  valor <- c("DD" = "joker", "C" = "ace", "7" = "king",
           "B" = "queen", "BB" = "jack", "BBB" = "ten", "0" = "nine")
  
  unname(valor[vec])
}