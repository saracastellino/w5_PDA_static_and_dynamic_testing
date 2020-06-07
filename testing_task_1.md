### Testing task 1:

# Carry out static testing on the code below.

# Comment on any errors that you see below.

```ruby

class CardGame


  def checkforAce(card)
    if card.value = 1 # should be 'if card.value == 1'
      return true
    else
      return false
    end
  end

dif highest_card(card1 card2) #'dif' should be 'def'; '(card1 card2)' should be '(card1, card2)'
  if card1.value > card2.value
    return card #'card' is not defined, should be 'card1'
  else
    return card2
  end
end
end # this 'end' is superfluous


def self.cards_total(cards)
  total # this should be 'total = 0'
  for card in cards
    total += card.value
    return "You have a total of" + total # this line must go on line 33 after the loop has finished to go through all the elements in cards and the right interpolation is "You have a total of #{total}"
  end
end
```
