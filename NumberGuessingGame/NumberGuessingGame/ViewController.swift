//
//  ViewController.swift
//  NumberGuessingGame
//
//  Created by Dad on 10/24/14.
//  Copyright (c) 2014 Dad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var inputNumber: UITextField!
    var number: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.alpha = false
        self.resetButtonPressed("")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessButtonPressed(sender: AnyObject) {
    var messages = ["Too high", "Too Low", "Getting warmer!", "You Win!!!"]
       
        var difference: Int!
        difference = Int(inputNumber.text.toInt()! - number)
        
        println("\(difference)")
        
        println("\(number)")
        
        if difference >= 5 {
            resultLabel.text = messages[0]
        } else if difference <= -5 {
            resultLabel.text = messages[1]
        }else if difference > -5 && difference < 5 && difference != 0 {
            resultLabel.text = messages[2]
        } else if difference == 0 {
            resultLabel.text = messages[3]
        }
        
        resultLabel.alpha = true
    }

    @IBAction func resetButtonPressed(sender: AnyObject) {
        //Random Number
        number = Int(arc4random_uniform(100) + 1)
    
    }
    
}

