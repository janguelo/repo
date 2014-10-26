//
//  ViewController.swift
//  Functions vs Methods
//
//  Created by Dad on 10/25/14.
//  Copyright (c) 2014 Dad. All rights reserved.
//

import UIKit

// Functions


class ViewController: UIViewController {

    // Methods
    func changeBackgroundColor(color: UIColor){
        view.backgroundColor = color
    }
    
    @IBAction func redButtonPressed(sender: AnyObject) {
        changeBackgroundColor(UIColor.redColor())
    }
    
    @IBAction func blueButtonPressed(sender: AnyObject) {
        changeBackgroundColor(UIColor.blueColor())
    }
    
    //func add(a: Int, b: Int) -> Int {
    func add(#a: Int, b: Int) -> Int {
        return a+b
    }
    
    func subtract(a: Int,_  b: Int) -> Int {
        return a - b
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        changeBackgroundColor(UIColor.blueColor())
        
        add(a: 10, b: 25) // # - make a parameter name required
        subtract(10, 5) // _ - not make paramter name required
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

