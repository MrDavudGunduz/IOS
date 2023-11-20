//
//  main.swift
//  Functions
//
//  Created by Davud Gündüz on 20.11.2023.
//

import Foundation

func sumFunction(x : Int , y : Int){
    print(x+y)
}

sumFunction(x: 2, y: 19)

func multiplyFunction(a : Int , b : Int) -> Int{
    return a * b
}

print(multiplyFunction(a: 3, b: 8))

func logicFunction (x : Int , y : Int) -> Bool {
    if x > y {
        return true
    } else {
        return false
    }
}

print(logicFunction(x: -5, y: 17))

func logicFunctionStr (x : Int , y : Int) -> String {
    if x > y {
        return "Grater"
    } else {
        return "Less"
    }
}

print(logicFunctionStr(x: 923, y: 567))



