//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Igor Guryan on 09.11.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
        
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No data"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .gray
    }
}
