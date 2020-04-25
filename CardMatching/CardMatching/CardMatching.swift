//
//  CardMatching.swift
//  CardMatching
//
//  Created by Theodor Ungureanu on 4/24/20.
//  Copyright © 2020 Snowlix. All rights reserved.
//

import Foundation

class CardMatching
{
    var cards =  Array<Card>()
    
    func chooseCard(at index: Int) {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        }
        else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // shufle the cards
        cards.shuffle()
    }
}
