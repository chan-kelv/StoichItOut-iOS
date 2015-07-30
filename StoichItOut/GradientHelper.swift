//
//  GradientHelper.swift
//  StoichItOut
//
//  Created by Dev on 2015-07-30.
//  Copyright (c) 2015 Dev. All rights reserved.
//

import UIKit

extension CAGradientLayer{
    
    func grapeBackground() -> CAGradientLayer{
//        let gradient:CAGradientLayer = CAGradientLayer()
//        
//        let startColor = UIColor(red: 82/255, green: 16/255, blue: 53/255, alpha: 1).CGColor
//        let finishColor = UIColor(red: 193/255, green: 95/255, blue: 150/255, alpha: 1).CGColor
//        let gradientArray = [startColor, finishColor]
//        let gradientLocation:[Float] = [0.0, 1.0]
//        
//        gradient.colors = gradientArray
//        gradient.locations = gradientLocation
        
        return backgroundCreate(UIColor(red: 82/255, green: 16/255, blue: 53/255, alpha: 1), finishColor: UIColor(red: 193/255, green: 95/255, blue: 150/255, alpha: 1))
    }
    
    // http://paletton.com/#uid=13i0u0kl1llhj1Kjubom-vcoMVz
    func turkBackground() -> CAGradientLayer{
//        let gradient:CAGradientLayer = CAGradientLayer()
//        
//        let startColor = UIColor(red: 82/255, green: 16/255, blue: 53/255, alpha: 1).CGColor
//        let finishColor = UIColor(red: 193/255, green: 95/255, blue: 150/255, alpha: 1).CGColor
//        let gradientArray = [startColor, finishColor]
//        let gradientLocation:[Float] = [0.0, 1.0]
//        
//        gradient.colors = gradientArray
//        gradient.locations = gradientLocation
        
        return backgroundCreate(UIColor(red: 44/255, green: 149/255, blue: 149/255, alpha: 1), finishColor: UIColor(red: 54/255, green: 238/255, blue: 238/255, alpha: 1))

    }
    
    func backgroundCreate (startColor:UIColor, finishColor: UIColor) -> CAGradientLayer{
        let gradient:CAGradientLayer = CAGradientLayer()
        
        let gradientArray = [startColor.CGColor, finishColor.CGColor]
        let gradientLocation:[Float] = [0.0, 1.0]
        
        gradient.colors = gradientArray
        gradient.locations = gradientLocation
        
        return gradient
    }
}
