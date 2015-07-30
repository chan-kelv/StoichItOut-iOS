//
//  ViewController.swift
//  StoichItOut
//
//  Created by Dev on 2015-07-30.
//  Copyright (c) 2015 Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //make background
        var gradient = CAGradientLayer()
        var background:CAGradientLayer = gradient.turkBackground()
        background.frame = view.bounds
        view.layer.insertSublayer(background, atIndex: 0)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

