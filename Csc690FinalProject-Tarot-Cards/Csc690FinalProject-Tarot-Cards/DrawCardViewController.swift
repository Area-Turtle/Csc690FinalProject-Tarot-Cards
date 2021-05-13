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
    @IBOutlet weak var message: UILabel!
    
    var values = [2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    var suits = ["cup", "pentacle", "sword", "wand"]
    
    var m_values = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]
    var m_suit = ["major"]
    
    var desc = [
        /* cups: [2,3,4,5,6,7,8,9,10,11,12,13,14,15] */
        ["cup2","unity"],["cup3", "friendship"],
        ["cup4", "apathy"],["cup5", "loss"],
        ["cup6", "familiarity"],["cup7", "searching"],
        ["cup8", "walking away"],["cup9", "satisfaction"],
        ["cup10", "inner happiness"],["cup11", "happy surpise"],
        ["cup12", "following the heard"],["cup13", "compassion"],
        ["cup14", "compassion"],["cup15", "new feelings"],
        
        /*pentacles [2,3,4,5,6,7,8,9,10,11,12,13,14,15]*/
        ["pentacle2","balancing"],["pentacle3", "teamwork"],
        ["pentacle4", "conversation"],["pentacle5", "need"],
        ["pentacle6", "charity"],["pentacle7", "hardwork"],
        ["pentacle8","apprenticeship"],["pentacle9", "fruits of labor"],
        ["pentacle10","legacy"],["pentacle11", "abition"],
        ["pentacle12", "efficiency"],["pentacle13", "practicality"],
        ["pentacle14", "abundance"],["pentacle15", "opportunity"],
        /*swords [2,3,4,5,6,7,8,9,10,11,12,13,14,15]*/
        ["sword2", "difficult choices"],["sword3", "rest"],
        ["sword4", "heartbreak"],["sword5", "unbridled ambition"],
        ["sword6", "transition"],["sword7", "deception"],
        ["sword8", "imprisionment"],["sword9", "anxiety"],
        ["sword10", "failure"],["sword11", "curiosity"],
        ["sword12", "complexity"],["swor13", "action"],
        ["sword14", "head over heart"],["sword15", "breakthrough"],
        /*wands [2,3,4,5,6,7,8,9,10,11,12,13,14,15]*/
        ["wand2", "planning"],["wand3", "looking ahead"],
        ["wand4", "community"],["wand5", "competition"],
        ["wand6", "victory"],["wand7", "perseverance"],
        ["wand8", "rapid action"],["wand9", "resilience"],
        ["wand10", "accomplishment"],["wand11", "exploration"],
        ["wand12", "action"],["wand13", "courage"],
        ["wand14","big picture"],["wand15", "creation"],
        
        /*majors: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]*/
        ["major0", "innocence"],["major1", "willpwer"],
        ["major2", "intuitive"],["major3", "motherhood"],
        ["major4", "authority"],["major5", "tradition"],
        ["major6", "partnerships"],["major7","direction"],
        ["major8", "inner strengh"],["major9", "contemplation"],
        ["major10", "change"],["major11", "cause/effect"],
        ["major12", "sacrifice"],["major13", "end of cycle"],
        ["major14", "middle path"],["major15", "addiction"],
        ["major16", "sudden upheaval"],["major17", "hope"],
        ["major18","unconscious"],["major19", "joy"],
        ["major20", "reflection"],["major21", "fulfilment"] ]
    
    var minorArcana: Deck!
    var majorArcana: Deck!
    var descCard: [String] = []
    var Tarot: [Card] = []
    var player: [Card] = []
    var temp: [String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        present.image = UIImage(named: "back")
        past.image = UIImage(named: "back")
        future.image = UIImage(named: "back")
        
        /*
         Loads Card Struct and Deck class. Comblines the values and suits into one value and appends them to tarot array. major and minor arcana are seperated
         */
        minorArcana = Deck(values: values, suits: suits)
        majorArcana = Deck(values: m_values, suits: m_suit)
        
        //minorArcana.shuffle()
        //majorArcana.shuffle()
        
        for i in 0...55{
            Tarot.append(minorArcana.tarot[i])
            //print(minorArcana.tarot[i])
            
        }
        for k in 0...21{
            Tarot.append(majorArcana.tarot[k])
            //print(majorArcana.tarot[k])
        }
        Tarot.shuffle()
        
    }
    @IBAction func drawCard(_ sender: UIButton) {
        setImage()
    }
    
    /*
     Sets cards to be drawn and calculates message.
     -  takes top card, and shuffles deck.
     -  sets each card as image, then finds decription and prints message.
     */
    func setImage(){
        for i in 0..<3{
            player.append(Tarot[i])
            Tarot.shuffle()
            
        }
        present.image = UIImage(named: "\(player[0].toString())")
        past.image = UIImage(named: "\(player[1].toString())")
        future.image = UIImage(named: "\(player[2].toString())")
        
        for i in 0...77{
            for j in 0..<1{
                
                if (desc[i][0] == player[0].toString()){
                    
                    temp.append(desc[i][1])
                    
                }
                if (desc[i][0] == player[1].toString()){
                    
                    temp.append(desc[i][1])
                    print(temp[1])
                    
                }
                if (desc[i][0] == player[2].toString()){
                    
                    temp.append(desc[i][1])
                    
                }
            }
        }
        self.message.text = "Your current situation is \(temp[0]). Your past was shaped by \(temp[1]). The direction things are moving in are \(temp[2])"
        print(""+temp[0]+temp[1]+temp[2])
        
        
    }
    
    
}
