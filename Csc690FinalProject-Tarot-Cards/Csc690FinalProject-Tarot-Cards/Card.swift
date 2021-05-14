//
//  Card.swift
//  Csc690FinalProject-Tarot-Cards
//
//  Created by Zach Ma on 5/12/21.
//  Copyright © 2021 Zachary Ma. All rights reserved.
//

import Foundation
/*
 Card values
 */
struct Card {
   
    var value: Int
    var suit: String
    init (value: Int, suit: String){

        self.value = value
        self.suit = suit
    }
    
    func toString() -> String {
        return "\(suit)\(value)"
    }
}
