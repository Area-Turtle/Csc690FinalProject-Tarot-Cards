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
    
    var desc = [
        /* cups: [2,3,4,5,6,7,8,9,10,11,12,13,14,15] */
        "unity", "friendship", "apathy", "loss", "familiarity", "searching", "walking away", "satisfaction", "inner happiness", "happy surpise", "following the heard", "compassion", "compassion", "new feelings",
        
        /*pentacles [2,3,4,5,6,7,8,9,10,11,12,13,14,15]*/
        "balancing", "teamwork", "conversation", "need", "charity", "hardwork", "apprenticeship", "fruits of labor", "legacy", "abition", "efficiency", "practicality", "abundance", "opportunity",
        /*swords [2,3,4,5,6,7,8,9,10,11,12,13,14,15]*/
        "difficult choices", "rest", "heartbreak", "unbridled ambition", "transition", "deception", "imprisionment", "anxiety", "failure", "curiosity", "complexity", "action", "head over heart", "breakthrough",
        /*wands [2,3,4,5,6,7,8,9,10,11,12,13,14,15]*/
        "planning", "looking ahead", "community", "competition", "victory", "perseverance", "rapid action", "resilience", "accomplishment", "exploration", "action", "courage", "big picture", "creation",
        
        /*majors: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]*/
        "innocence", "willpwer", "intuitive", "motherhood", "authority", "tradition", "partnerships", "direction", "inner strengh", "contemplation", "change", "cause/effect", "sacrifice", "end of cycle", "middle path", "addiction", "sudden upheaval", "hope","unconscious", "joy", "reflection", "fulfilment" ]
    
    
    var minorArcana: Deck!
    var majorArcana: Deck!
    var descCard: [String] = []
    var Tarot: [Card] = []
    var player: [Card] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        present.image = UIImage(named: "back")
        past.image = UIImage(named: "back")
        future.image = UIImage(named: "back")
        minorArcana = Deck(values: values, suits: suits)
        majorArcana = Deck(values: m_values, suits: m_suit)
        
        for i in 0...55{
            Tarot.append(minorArcana.tarot[i])
        }
        for k in 0...21{
            Tarot.append(majorArcana.tarot[k])
        }
        /*
         for j in 0...77{
         var temp = (Tarot[j].toString())
         desc[j] = "\(temp): \(desc[j])"
         }
         
         for l in 0...77{
         print(desc[l])
         }
         */
        
        
        
    }
    @IBAction func drawCard(_ sender: UIButton) {
        setImage()
    }
    func setImage(){
        for i in 0..<3{
            player.append(Tarot[i])
            Tarot.shuffle()
            
        }
        present.image = UIImage(named: "\(player[0].toString())")
        past.image = UIImage(named: "\(player[1].toString())")
        future.image = UIImage(named: "\(player[2].toString())")
    }
    
    
}
