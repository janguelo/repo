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
        calculateTipButtonPressed(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTipButtonPressed(sender: AnyObject) {
    
        println("Tip")
        
        var amount = (amountTextField.text as NSString).doubleValue
        
        var tip10 = amount * 0.10
        var tip15 = amount * 0.15
        var tip20 = amount * 0.20
        
//        tip10Label.text = tip10.description
//        tip15Label.text = tip15.description
//        tip20Label.text = "$\(tip20)"
        
        // Format Number for Currency
        
        let numberFormatter = NSNumberFormatter()
        numberFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        
        tip10Label.text = numberFormatter.stringFromNumber(tip10)
        tip15Label.text = numberFormatter.stringFromNumber(tip15)
        tip20Label.text = numberFormatter.stringFromNumber(tip20)
        
    }

}

