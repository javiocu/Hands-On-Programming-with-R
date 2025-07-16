deck <- data.frame(face="ace", suit="hearts", value=1)

hand = c("king","queen","jack","ten","nine","eigth","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eigth","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eigth","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eigth","seven",
         "six", "five","four","three","two","one")

suit = c("spades","spades","spades","spades","spades","spades",
        "spades","spades","spades","spades","spades","spades","spades",
        "clubs","clubs","clubs","clubs","clubs","clubs","clubs","clubs",
        "clubs","clubs","clubs","clubs","clubs",
        "diamonds","diamonds","diamonds","diamonds","diamonds","diamonds",
        "diamonds","diamonds","diamonds","diamonds","diamonds","diamonds",
        "diamonds",
        "hearts","hearts","hearts","hearts","hearts","hearts","hearts",
        "hearts","hearts","hearts","hearts","hearts","hearts")

values = c(13:1,13:1,13:1,13:1)


deck = data.frame(hand, suit, values)
