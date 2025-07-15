# Función que suma la simulación de haber tirado
# dos dados de seis caras y suma sus valores

roll <- function() {
  die1 <- sample(1:6, size=1)
  die2 <- sample(1:6, size=1)
  sum(die2+die1)
}
