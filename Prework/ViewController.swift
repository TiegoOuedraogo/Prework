//
//  ViewController.swift
//  Prework
//
//  Created by TIEGO Ouedraogo on 2/3/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        //getting bill amount
        let bill = Double(billAmountTextField.text!) ?? 0;
        //getting total tip
        let tipPercentage = [0.15,0.18,0.2];
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        
        tipAmountLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
        
    }
}

