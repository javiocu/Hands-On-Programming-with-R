


wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")


roll <- expand.grid(wheel, wheel, wheel, stringsAsFactors = FALSE)

prob <- c("DD"=0.03, "7"=0.03, "BBB"=0.06, "BB"=0.1, "B"=0.25, 
          "C"=0.01, "0"=0.52)



roll$prob1 <- prob[roll$Var1]
roll$prob2 <- prob[roll$Var2]
roll$prob3 <- prob[roll$Var3]



roll$probto <- roll$prob1 * roll$prob2 * roll$prob3

valores <- c(roll$Var1[1],roll$Var2[1],roll$Var3[1])

scoreV2(valores)

for (i in 1:length(roll$Var1)){
  roll$prize[i] <- scoreV2(c(roll$Var1[i], roll$Var2[i], roll$Var3[i]))
}



head(roll)

sum(roll$prize * roll$probto)