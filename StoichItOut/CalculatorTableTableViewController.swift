//
//  CalculatorTableTableViewController.swift
//  StoichItOut
//
//  Created by Dev on 2015-07-30.
//  Copyright (c) 2015 Dev. All rights reserved.
//

import UIKit

class CalculatorTableTableViewController: UITableViewController {
    @IBOutlet weak var txtConc: UITextField!
    @IBOutlet weak var txtMolarity: UITextField!
    @IBOutlet weak var txtVolume: UITextField!
    @IBOutlet weak var txtMass: UITextField!
    @IBOutlet weak var txtResult: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        //set back button
        navigationController?.navigationBarHidden = false
    
        tableView.allowsSelection = false;
        
        //keyboard types
        txtConc.keyboardType = UIKeyboardType.DecimalPad
        txtMolarity.keyboardType = UIKeyboardType.DecimalPad
        txtVolume.keyboardType = UIKeyboardType.DecimalPad
        txtMass.keyboardType = UIKeyboardType.DecimalPad
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateMolarity(sender: AnyObject) {
        let validConc = isValidNumEntry(txtConc.text)
        let validMol = isValidNumEntry(txtMolarity.text)
        let validVol = isValidNumEntry(txtVolume.text)
        let validMass = isValidNumEntry(txtMass.text)
        
        let calculator = MolarCalculator(mol: txtMolarity.text, concentration: txtConc.text, mass: txtMass.text, volume: txtVolume.text)
        var result:Double = 0.0
        
        if(!validConc){
            if(validMol && validVol && validMass){
                result = calculator.solveConc()
                txtConc.text = result.description
                println(result)
            }
            else{
                focusOnFirstInvalidField(true, validMol: validMol, validVol: validVol, validMass: validMass)
            }
        }
        else if(!validMol){
            if(validConc && validVol && validMass){
                result = calculator.solveMol()
                txtMolarity.text = result.description
                println(result)
            }
            else{
                focusOnFirstInvalidField(validConc, validMol: true, validVol: validVol, validMass: validMass)
            }
        }
        else if(!validVol){
            if(validMol && validMol && validMass){
                result = calculator.solveVol()
                txtVolume.text = result.description
                println(result)
            }
            else{
                focusOnFirstInvalidField(validConc, validMol: validMol, validVol: true, validMass: validMass)
            }
        }
        else{
            if(validConc && validMol && validVol){
                result = calculator.solveMass()
                txtMass.text = result.description
            }
            else{
                focusOnFirstInvalidField(validConc, validMol: validMol, validVol: validVol, validMass: true)
            }
        }
    }
    
    private func isValidNumEntry(text:String) -> Bool{
        if(text.isEmpty){
            return false
        }
        
        let validNum:Double = (text as NSString).doubleValue
        let charArray = Array(text)
        var decimalCount = 0
        for char in charArray{
            if (char == "."){
                decimalCount++
            }
        }
        if (decimalCount > 1 || validNum == 0.0){
            println(decimalCount)
            println(validNum)
            return false
        }
        return true
    }
    
    private func focusOnFirstInvalidField(validConc:Bool, validMol:Bool, validVol:Bool, validMass:Bool){
        //TODO
        if(!validConc){
            txtConc.becomeFirstResponder()
        }
        else if (!validMol){
            txtMolarity.becomeFirstResponder()
        }
        else if (!validVol){
            txtVolume.becomeFirstResponder()
        }
        else{
            txtMass.becomeFirstResponder()
        }
    }
}
