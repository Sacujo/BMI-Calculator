//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Igor Guryan on 09.11.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
