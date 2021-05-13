//
//  HomeViewController.swift
//  Csc690FinalProject-Tarot-Cards
//
//  Created by Zach Ma on 5/4/21.
//  Copyright © 2021 Zachary Ma. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func cardScene(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "cardScene_vc") as! DrawCardViewController
        present(vc, animated: true)
    }
    
    @IBAction func indexScene(_ sender: UIButton) {let vc2 = storyboard?.instantiateViewController(identifier: "indexScene_vc") as! IndexViewController
        present(vc2, animated: true)
    }
    
}
