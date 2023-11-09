//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Igor Guryan on 09.11.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
    
    }
    
    @IBAction func recalculateTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}