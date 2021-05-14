//
//  IndexViewController.swift
//  Csc690FinalProject-Tarot-Cards
//
//  Created by Zach Ma on 5/13/21.
//  Copyright © 2021 Zachary Ma. All rights reserved.
//

import UIKit
import Foundation

struct category {
    let title: String
    let item: [String]
}

class IndexViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    /*
     private let data: [category] = {
     category(title: "major", item: ["innocence", "willpower", "intuitive", "motherhood", "authority", "tradition", "parntnerships", "direction", "inner strength", "conemplation", "change", "cause/effect", "sacrifice", "end of cycle", "middle path", "addiction", "sudden upheaval", "hope", "unconscious", "joy", "reflecction", "fulfillment"])
     }()
     */
    let f_suit = ["cups arcana", "pentacles arcana", "swords arcana", "wands arcana", "majors arcana"]
    var values = [2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    var suits = ["cup", "pentacle", "sword", "wand"]
    
    var m_values = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]
    var m_suit = ["major"]
    
    var temp: [String] = []
    var desc = [
        "major0","major1","major2","major3","major4","major5","major6","major7","major8","major9","major10","major11","major12","major13","major14","major15","major16","major17","major18","major19","major20","major21",
        "cup2","cup3","cup4","cup5","cup6","cup7","cup8","cup9","cup10","cup11","cup12","cup13","cup14","cup15",
        "pentacle2","pentacle3","pentacle4","pentacle5","pentacle6","pentacle7","pentacle8","pentacle9","pentacle10","pentacle11","pentacle12","pentacle13","pentacle14", "pentacle15",
        "sword2","sword3","sword4","sword5","sword6","sword7","sword8","sword9","sword10","sword11","sword12","sword13","sword14","sword15",
        "wand2","wand3","wand4","wand5","wand6","wand7","wand8","wand9","wand10","wand11","wand12","wand13","wand14","wand15"
        
    ]
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        //print (desc.count)
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    
}


extension IndexViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(desc[indexPath.row])")
        //tableView.deselectRow(at: indexPath, animated: true)
        //let category = f_suit(indexPath.row)
    }
}

extension IndexViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return desc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell?tableView.image = UIImage(named:desc[indexPath.row])
        return cell
        
        //cell.indexLabel.text=desc[indexPath.row]
        //cell.tableview.image = UIImage(named: desc[indexPath.row])
        //cell?indexLabel.text = desc[
        //return cell
    }
}
