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
        view.backgroundColor = UIColor.blackColor()
        
        for word in wordArray {
            
            var label = UILabel()
            
            label.text = word
            label.font = UIFont.systemFontOfSize(32)
            label.sizeToFit()
            // label.center = CGPoint(x: 100, y: 200)
            label.backgroundColor = UIColor.whiteColor()
            
            var x = CGFloat(arc4random_uniform(320))
            var y = CGFloat(arc4random_uniform(480))
            
            label.center = CGPoint(x: x, y: y)
            
            
            view.addSubview(label)
            
            // Pan Gesture
            var panGesture = UIPanGestureRecognizer(target: self, action: Selector("handlePanGesture:"))
            label.addGestureRecognizer(panGesture)
            label.userInteractionEnabled = true
        }
        
    }

    func handlePanGesture(panGesture: UIPanGestureRecognizer) {
        
        println("pan")
        
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

