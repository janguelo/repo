//
//  ViewController.swift
//  TipCalculator
//
//  Created by Dad on 10/13/14.
//  Copyright (c) 2014 GA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tip10Label: UILabel!
    @IBOutlet weak var tip15Label: UILabel!
    @IBOutlet weak var tip20Label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTipButtonPressed(sender: AnyObject) {
    
        println("Tip")
        
    }

}

