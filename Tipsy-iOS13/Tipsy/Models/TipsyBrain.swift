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
        
        tipsy.totalTip = ((bill * Float(tipPercentage)) / 100)
        tipsy.totalBill = tipsy.totalTip + tipsy.bill
        tipsy.totalPerPerson = Float(tipsy.totalBill) / Float(numberOfPeople)
        
    }
    
  
    
    
    
}
