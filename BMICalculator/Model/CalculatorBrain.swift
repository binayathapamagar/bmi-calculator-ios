//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by Binaya on 17/05/2021.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let weight = String(format: "%.0f", weight)
        let height = String(format: "%.2f", height)
        let bmiValue = Float(weight)! / pow(Float(height)!, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, message: "Underweight! Please eat more!", viewColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 25.0 {
            bmi = BMI(value: bmiValue, message: "Normal. You are healthy.", viewColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else if bmiValue < 30.0 {
            bmi = BMI(value: bmiValue, message: "Overweight. Start exercising and control your diet.", viewColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, message: "Obese. Get a health checkup, start exercising and change your diet.", viewColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiIn2DP = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiIn2DP
    }
    
    func getAdviceMessage() -> String {
        
        return bmi?.message ?? "No advice"
    }
    
    func getViewColor() -> UIColor {
        return bmi?.viewColor ?? #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    }
    
}
