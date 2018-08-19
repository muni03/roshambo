//
//  ResultViewController.swift
//  Roshambo
//
//  Created by pmuniz on 4/30/18.
//  Copyright © 2018 Peter Muniz. All rights reserved.
//
import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var compChoice = ""
        let random = arc4random_uniform(3)
        
        switch random{
        case 0:
            compChoice = "rock"
        case 1:
            compChoice = "paper"
        case 2:
            compChoice = "scissors"
        default:
            break
        }
        
        print("computer chose \(compChoice)")
        print("player chose \(choice)")
        
        
        if compChoice.count == choice.count{
            result.text = "It's a Tie!"
            resultImage.image = UIImage.init(named: "itsATie")
        }else if compChoice == "rock"{
            if choice == "paper"{
                result.text = "You Win!"
                resultImage.image = UIImage.init(named: "PaperCoversRock")
                } else{
                result.text = "You Lose."
                resultImage.image = UIImage.init(named: "RockCrushesScissors")
                }
        }else if compChoice == "scissors"{
            if choice == "rock"{
                result.text = "You Win!"
                resultImage.image = UIImage.init(named: "RockCrushesScissors")
            }else {
                result.text = "You Lose."
                resultImage.image = UIImage.init(named: "ScissorsCutPaper")
            }
        }else if compChoice == "paper"{
            if choice == "scissors"{
                result.text = "You Win!"
                resultImage.image = UIImage.init(named: "ScissorsCutPaper")
            }else{
                result.text = "You Lose."
                resultImage.image = UIImage.init(named: "PaperCoversRock")
            }
        }
        
    
    }
    
}
