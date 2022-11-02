//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPCTButtons: UIButton!
    @IBOutlet weak var tenPCTButtons: UIButton!
    @IBOutlet weak var twentyPCTButtons: UIButton!
    @IBOutlet weak var splitNumberLAbel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        tenPCTButtons.isSelected = false
        twentyPCTButtons.isSelected = false
        zeroPCTButtons.isSelected = false
        sender.isSelected = true
        billTextField.endEditing(true)
    }
    @IBAction func stepperValuePressed(_ sender: UIStepper) {
        splitNumberLAbel.text = String(format: "%.0f", sender.value)
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "resultSig", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSig" {
            let resultVC = segue.destination as! ResultsViewController
            resultVC.tipval = "3.0"
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

