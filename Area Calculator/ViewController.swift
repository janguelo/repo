//
//  ViewController.swift
//  Area Calculator
//
//  Created by Dad on 10/8/14.
//  Copyright (c) 2014 Dad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttedPressed(sender: AnyObject) {
        
        println("button pressed")
        
        if let width = widthTextField.text.toInt(){
            if let height = heightTextField.text.toInt(){
                
                println("valid input! \(width) x \(height)")
                
                var area = width * height
                outputLabel.text = "\(area)"
                
            }
            
        }
        
    }

}