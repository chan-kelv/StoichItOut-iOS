//
//  MolarCalculator.swift
//  StoichItOut
//
//  Created by Dev on 2015-07-30.
//  Copyright (c) 2015 Dev. All rights reserved.
//

import UIKit

class MolarCalculator {
    var molarity:Double = 0
    var conc:Double = 0
    var mass:Double = 0
    var volume:Double = 0
    init(mol:String, concentration:String, mass:String, volume:String) {
        molarity = doubleFromString(mol)
        conc = doubleFromString(concentration)
        self.mass = doubleFromString(mass)
        self.volume = doubleFromString(volume)
    }
    
    func doubleFromString(numberText:String) -> Double{
        //non decimal number will return as 0.0
        return (numberText as NSString).doubleValue
    }
    
    func Calculate(){
        
    }
   
}
