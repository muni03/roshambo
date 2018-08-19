//
//  ChooseViewController.swift
//  Roshambo
//
//  Created by pmuniz on 4/30/18.
//  Copyright © 2018 Peter Muniz. All rights reserved.
//

import UIKit

var choice = ""

class ChooseViewController: UIViewController {
    @IBAction func rockButton(_ sender: Any) {
        choice = "rock"
        performSegue(withIdentifier: "play", sender: self)
    }
    
    @IBAction func paperButton(_ sender: Any) {
        choice = "paper"
        performSegue(withIdentifier: "play", sender: self)
    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        choice = "scissors"
        performSegue(withIdentifier: "play", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

