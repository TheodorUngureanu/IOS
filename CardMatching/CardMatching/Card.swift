//
//  Card.swift
//  CardMatching
//
//  Created by Theodor Ungureanu on 4/24/20.
//  Copyright © 2020 Snowlix. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier:Int
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
