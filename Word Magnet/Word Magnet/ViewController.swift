//
//  ViewController.swift
//  Word Magnet
//
//  Created by Dad on 10/19/14.
//  Copyright (c) 2014 Dad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var wordArray = ["I", "like", "to", "eat", "fruit", "my", "favorite"]
        view.backgroundColor = UIColor(red: 52.0/255, green: 152.0/255, blue: 219.0/255, alpha: 1)
        for word in wordArray {
            
            var label = UILabel()
            
            label.text = word
            label.font = UIFont.systemFontOfSize(32)
            label.sizeToFit()
            // label.center = CGPoint(x: 100, y: 200)
            label.backgroundColor = UIColor.whiteColor()
            
            var x = CGFloat(50 + arc4random_uniform(300))
            var y = CGFloat(100 + arc4random_uniform(450))
            
            label.center = CGPoint(x: x, y: y)
            
            
            view.addSubview(label)
        
            // Pan Gesture
            var panGesture = UIPanGestureRecognizer(target: self, action: Selector("handlePanGesture:"))
            label.addGestureRecognizer(panGesture)
            label.userInteractionEnabled = true
        }
        
    }

    func handlePanGesture(panGesture: UIPanGestureRecognizer) {
        
        //println("pan")
        
        // get translation
        var translation = panGesture.translationInView(view)
        panGesture.setTranslation(CGPointZero, inView: view)
        //println(translation)
        
        
        //add dx, dy to current label position
        
        var label = panGesture.view as UILabel
        label.center = CGPoint(x: label.center.x + translation.x,
            y: label.center.y + translation.y)
        //label.center = translation
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

