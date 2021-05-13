//
//  Deck.swift
//  Csc690FinalProject-Tarot-Cards
//
//  Created by Zach Ma on 5/12/21.
//  Copyright © 2021 Zachary Ma. All rights reserved.
//

import Foundation

class Deck{
    
    var tarot: [Card]
    
    init(){
        tarot=[]
    }
    
    init(values: [Int], suits: [String]){
        tarot = []
        for v in values{
            for s in suits{
                let t = Card(value: v, suit: s)
                    //print(t)
                tarot.append(t)
            }
        }
    }
    func shuffle() -> Void{
        tarot.shuffle()
    }
    
    
}
