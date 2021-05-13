//
//  DrawCardViewController.swift
//  Csc690FinalProject-Tarot-Cards
//
//  Created by Zach Ma on 5/12/21.
//  Copyright © 2021 Zachary Ma. All rights reserved.
//

import UIKit
import Foundation

class DrawCardViewController: UIViewController {
    
    @IBOutlet weak var present: UIImageView!
    @IBOutlet weak var past: UIImageView!
    @IBOutlet weak var future: UIImageView!
    var values = [2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    var suits = ["cup", "pentacle", "sword", "wand"]

    var m_values = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]
    var m_suit = ["major"]
    
    var minorArcana: Deck!
    var majorArcana: Deck!
    var Tarot: [Card] = []
    var player: [Card] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        present.image = UIImage(named: "back")
        past.image = UIImage(named: "back")
        future.image = UIImage(named: "back")
        minorArcana = Deck(values: values, suits: suits)
        majorArcana = Deck(values: m_values, suits: m_suit)
        minorArcana.shuffle()
        majorArcana.shuffle()
        
        for i in 0...52{
            Tarot.append(minorArcana.tarot[i])
        }
        for k in 0...21{
            Tarot.append(majorArcana.tarot[k])
        }
        for j in 0...74{
            print(Tarot[j])
        }
        
        //print(number)
        //for i in 0...52{
            //player.append(deck.tarot[i])
        //}
    }
    @IBAction func drawCard(_ sender: UIButton) {
        setImage()
        
    }
    func setImage(){
        for i in 0..<3{
            player.append(Tarot[i])
            
            Tarot.shuffle()
        }
        var pre = player[0].toString()
        print(pre)
        var pa = player[1].toString()
        print(pa)
        var fu = player[2].toString()
        print(fu)
        present.image = UIImage(named: "\(pre)")
        past.image = UIImage(named: "\(pa)")
        future.image = UIImage(named: "\(fu)")
        
    }
    

}
