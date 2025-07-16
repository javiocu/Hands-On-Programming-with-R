# Exercise 7.1 (How many Aces?) Extract the face column of deck2 
# and test whether each value is equal to ace. As a challenge, use R 
# to quickly count how many cards are equal to ace.

deck2[deck2$face == "ace",]$value <- c(14)