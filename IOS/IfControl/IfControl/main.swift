//
//  main.swift
//  IfControl
//
//  Created by Davud Gündüz on 20.11.2023.
//

import Foundation

var myAge = 22

if myAge > 18 {
    print("You are an adult ")
} else {
    print("You are not an adult ")
}

var studentNots = ["Husam" : 100 , "Selim" : 92 , "Sahut" : 86 , "Mehmet" : 77 , "Mecid" : 56 , "Davud" : 34 ]

for ( name  , not ) in studentNots {
    if not < 100 && not > 90 {
        print(name + " : AA")
    }else
    
    if not < 90 && not > 80{
        print(name + " : BA")
    }else
    
    if not < 80 && not > 70{
        print(name + " : BB")
    }else
    
    if not < 70 && not > 60{
        print(name + " : CB")
    }else
    
    if not < 60 && not > 50{
        print(name + " : CC")
    } else if not < 50 {
        print(name + " : Unsuccessful")
    }
}

    

