//
//  Tipsy.swift
//  Tipsy
//
//  Created by Davud Gündüz on 3.11.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Tipsy {
    var bill: Float
    var totalBill: Float
    var tipPercentage: Int
    var numberOfPeople: Int
    var totalTip: Float
    var totalPerPerson: Float
    
    init(bill: Float, totalBill: Float, tipPercentage: Int, numberOfPeople: Int, totalTip: Float, totalPerPerson: Float) {
        self.bill = bill
        self.totalBill = totalBill
        self.tipPercentage = tipPercentage
        self.numberOfPeople = numberOfPeople
        self.totalTip = totalTip
        self.totalPerPerson = totalPerPerson
    }
}
