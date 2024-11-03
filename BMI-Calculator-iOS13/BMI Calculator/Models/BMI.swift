//
//  BMI.swift
//  BMI Calculator
//
//  Created by Davud Gündüz on 3.11.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    var value : Float
    let advice : String
    let color : UIColor
    let category : String
    
    init(value: Float, advice: String, color: UIColor , category: String) {
        self.value = value
        self.advice = advice
        self.color = color
        self.category = category
    }
}

