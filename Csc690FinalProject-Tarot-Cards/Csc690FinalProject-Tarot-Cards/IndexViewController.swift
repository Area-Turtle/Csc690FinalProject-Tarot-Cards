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
        print("test")
        tableView.deselectRow(at: indexPath, animated: true)
        //let category = f_suit(indexPath.row)
    }
}

extension IndexViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return f_suit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text=f_suit[indexPath.row].capitalized
       
        return cell
    }
}
