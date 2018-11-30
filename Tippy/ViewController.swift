//
//  ViewController.swift
//  Tippy
//
//  Created by Jo Ey on 11/17/18.
//  Copyright © 2018 Jo Ey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var personSlider: UISlider!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipsSegment: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func tapOut(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func personChange(_ sender: Any) {
        personSlider.value = roundf(personSlider.value)
    }
    
    @IBAction func calculateTotal(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipPercent = [0.18, 0.2, 0.25]
        let slideTotal = Int(personSlider.value)
        
        let tip = (bill * tipPercent[tipsSegment.selectedSegmentIndex])
        let total = (tip + bill) / Double(slideTotal)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
    
}

