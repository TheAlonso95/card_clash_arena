import card

pub type Player {
  Player(id: Int, name: String, deck: List(Deck))
}

pub type Deck {
  Deck(id: Int, name: String, cards: List(card.Card))
}
