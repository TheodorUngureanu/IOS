//
//  ViewController.swift
//  CardMatching
//
//  Created by Theodor Ungureanu on 4/23/20.
//  Copyright © 2020 Snowlix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var game = CardMatching(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    
    var flipCount: Int = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    
    @IBAction func touchCard( _ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButtons.firstIndex(of: sender)!
        game.chooseCard(at: cardNumber)
        updateViewFromModel()
    }
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }
            else {
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 0.2246819735, green: 0.7733145356, blue: 0.3070642054, alpha: 0):#colorLiteral(red: 0.2246819735, green: 0.7733145356, blue: 0.3070642054, alpha: 1)
            }
        }
    }
    
    var emojiChoices: Array<String> = ["🦠","🎾","🦠","🎾","🧬","💻","🧬","💻"]
    func emoji(for card: Card) -> String {
        return "?"
    }
}

