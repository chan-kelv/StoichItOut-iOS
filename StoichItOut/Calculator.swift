//
//  Calculator.swift
//  StoichItOut
//
//  Created by Dev on 2015-07-30.
//  Copyright (c) 2015 Dev. All rights reserved.
//

import UIKit

class Calculator: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let gradient:CAGradientLayer = CAGradientLayer()
//        gradient.frame = self.view.bounds
//        
//        let startColor = UIColor(red: 255, green: 95, blue: 0, alpha: 1).CGColor
//        let finishColor = UIColor(red: 87, green: 62, blue: 47, alpha: 1).CGColor
//        let gradientArray = [startColor, finishColor]
//        let gradientLocation:[Float] = [0.0, 1.0]
//        
//        gradient.colors = gradientArray
//        gradient.locations = gradientLocation
//        view.layer.insertSublayer(gradient, atIndex: 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
