//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Davud Gündüz on 3.11.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct TipsyBrain{
    var tipsy : Tipsy
    
    
    mutating func getBillPerPerson( numberOfPeople: Int , tipPercentage: Int , bill : Float){
        tipsy.bill = Float(bill)
        tipsy.tipPercentage = tipPercentage
        tipsy.numberOfPeople = numberOfPeople
        
        tipsy.totalPerPerson = getTotalBill() / Float(tipsy.numberOfPeople)
    }
    
    mutating func getTotalTip() -> Float {
        tipsy.totalTip = Float(tipsy.bill * Float(tipsy.tipPercentage) / 100)
        return tipsy.totalTip
    }
    
    mutating func getTotalBill() -> Float {
        tipsy.totalBill = Float(tipsy.bill) + getTotalTip()
        return tipsy.totalBill
    }
    
    
    
}
