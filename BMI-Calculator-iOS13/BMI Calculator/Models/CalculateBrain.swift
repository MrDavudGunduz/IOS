//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Davud Gündüz on 2.11.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit



struct CalculateBrain {
   
    var bmi: BMI?
    
    
    mutating func getBMICalculate(weightValue: Float, heightValue: Float)   {
        
        let bmiValue =  Float(weightValue) / Float((heightValue * heightValue))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more food", color: .green, category: "Underweight")
        } else if bmiValue >= 18.5 && bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "You doin fine", color: .blue, category: "Normal")
        } else if bmiValue >= 25 && bmiValue < 30 {
            bmi = BMI(value: bmiValue, advice: "Eat less food", color: .purple, category: "Overweight")
        } else {
            bmi = BMI(value: bmiValue, advice: "You are obese", color: .red, category: "Obese")
        }
        
        
    }
    
    func getBMIValue () -> String {
        return String(format: "%.2f", bmi!.value)
    }
    
    
    
    
}
