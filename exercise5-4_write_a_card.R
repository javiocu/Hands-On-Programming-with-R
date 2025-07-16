deck <- data.frame(face="ace", suit="hearts", value=1)

<<<<<<< HEAD
hand = c("king","queen","jack","ten","nine","eight","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eight","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eight","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eight","seven",
=======
hand = c("king","queen","jack","ten","nine","eigth","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eigth","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eigth","seven",
         "six", "five","four","three","two","one","king","queen","jack","ten","nine","eigth","seven",
>>>>>>> 25c1d528bec06e79dbc01f32b42cae11dd31141b
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
