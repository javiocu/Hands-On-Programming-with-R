# Función que suma la simulación de haber tirado
# dos dados de seis caras y suma sus valores

roll <- function(bones=1:6) {
  die <- bones
  dice <- sample(die, size = 2, 
                 replace = TRUE, 
                 prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}
