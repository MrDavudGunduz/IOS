//
//  Tipsy.swift
//  Tipsy
//
//  Created by Davud Gündüz on 3.11.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Tipsy {
    var totalBill: Double
    var tipPercentage: Int
    var numberOfPeople: Int
    var totalTip: Double
    var totalPerPerson: Double
    
    init(totalBill: Double, tipPercentage: Int, numberOfPeople: Int, totalTip: Double, totalPerPerson: Double) {
        self.totalBill = totalBill
        self.tipPercentage = tipPercentage
        self.numberOfPeople = numberOfPeople
        self.totalTip = totalTip
        self.totalPerPerson = totalPerPerson
    }
}
