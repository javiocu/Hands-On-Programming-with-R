# Exercise 7.2 (Score the Deck for Hearts) Assign a value of 1 
# to every card in deck4 that has a suit of hearts.

deck4[deck4$suit == "hearts",]$value <- 1


