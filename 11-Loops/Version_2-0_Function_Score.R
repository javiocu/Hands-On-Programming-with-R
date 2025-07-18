# This score function version use de "DD" as a wild card
# The "DD" will act as any card when there are or a "C" or double 
# of other cards.

rm(iguales)

wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")

prob <- c("DD"=0.03, "7"=0.03, "BBB"=0.06, "BB"=0.1, "B"=0.25, 
          "C"=0.01, "0"=0.52)

#codigo <- c("BB", "DD", "7")
#codigo <- c("DD", "DD", "7")
#codigo <- c("DD", "BB", "BB")
#codigo <- c("BBB", "BBB", "BBB")
codigo <- c("C", "C", "C")

codigo <- c("DD", "DD", "BBB")




scoreV2 <- function(codigo) {
  diamante <- sum("DD" == codigo)
  cherries <- sum("C" == codigo)
  prizes <- c("DD"=100, "7"=80, "BBB"=40, "BB" = 25, "B" = 10,
              "C"= 10, "0" = 0)
  if (all(codigo == "DD")) {
    prize <- 100
  }
  
  # Condicionales:
  iguales <- codigo[1] == codigo[2] &
    codigo[1] == codigo[3]
  
  
  # Identificar el caso:
  bars <- codigo %in% c("B", "BB", "BBB", "DD")
  
  if (diamante == 2) {  # Hay dos diamantes
    iguales <- TRUE
  } else if (diamante) {  # Solamente 1 diamante comprobamos los otros
    iguales <- codigo[1] == codigo[2] |
      codigo[1] == codigo[3] |
      codigo[2] == codigo[3]
  } else if (all(bars) & !iguales) { # All bars but no the same bar
    iguales <- FALSE
  } else if (cherries == 3) {
    iguales <- TRUE
  }
  
  # Establecer el prize
  if (iguales & diamante >= 1 & diamante < 3) { # Si son iguales y hay diamantes
    prize <- as.numeric(as.character(prizes[codigo[codigo != "DD"]][1]))
  } else if (!iguales & all(bars)) {
    prize <- 5
  } else if (iguales) {
    prize <- as.numeric(as.character(prizes[codigo[1]]))
  } else if (cherries) {
    if (cherries == 1) {
      prize <- 2
    } else {
      prize <- 5
    }
  } else {
    prize <- 0
  }
  
  # Ajustar precio con diamantes:
  if (prize != 0) {
    prize <- prize * 2 ^ diamante
  }
  
  prize
}





