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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        //set back button
        navigationController?.navigationBarHidden = false
        
        tableView.allowsSelection = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateMolarity(sender: AnyObject) {
        
    }
}
