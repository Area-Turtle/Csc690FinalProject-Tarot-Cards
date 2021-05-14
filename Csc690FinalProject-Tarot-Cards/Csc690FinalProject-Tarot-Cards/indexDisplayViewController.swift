//
//  indexDisplayViewController.swift
//  Csc690FinalProject-Tarot-Cards
//
//  Created by Zach Ma on 5/13/21.
//  Copyright © 2021 Zachary Ma. All rights reserved.
//

import UIKit

class indexDisplayViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "back")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
