//
//  main.swift
//  ClosureSwift
//
//  Created by Davud Gündüz on 18.03.2024.
//

import Foundation

func sum(number1 : Int , number2 : Int) -> Int {
    return number1 + number2
}

print(sum(number1: 2, number2: 5))

func multiply(number1 : Int , number2 : Int ) -> Int {
    return number1 * number2
}

print(multiply(number1: 7, number2: 11))

func calculate(number1 : Int , number2 : Int , calculateFunc : (Int , Int) -> Int) -> Int {
    return calculateFunc(number1, number2)
}

let sumVariable = calculate(number1: 7, number2: 20, calculateFunc: sum)

let multiplyVar = calculate(number1: 7, number2: 20, calculateFunc: multiply)


let result1 = calculate(number1: 4, number2: 4, calculateFunc: { (number1 : Int , number2 : Int ) -> Int in
    return number1 * number2})
print(result1)

let result2 = calculate(number1: 4, number2: 4, calculateFunc: { (number1  , number2 ) -> Int in
    return number1 * number2})
print(result2)

let result3 = calculate(number1: 4, number2: 4, calculateFunc: { (number1  , number2 ) in
    return number1 * number2})
print(result3)

let result4 = calculate(number1: 4, number2: 4, calculateFunc: { (number1  , number2 ) in number1 * number2})
print(result4)

let result5 = calculate(number1: 4, number2: 4, calculateFunc: { $0 * $1})
print(result5)

let myArray = [10,20,30,40,50]

func test(number1 : Int) -> Int {
    return number1 / 5
}

let resultMap = myArray.map(test)
print(resultMap)
