//
//  main.swift
//  Loops
//
//  Created by Davud Gündüz on 20.11.2023.
//

import Foundation

var number = 0

while number < 10 {
    print(number)
    number += 1
}

var characterAlive = true

while characterAlive == true {
    print("character alive")
    characterAlive = false
}

while number < 100 {
    print(number)
    number = (2 * number) - 5
}

var myFruitArray = ["Banana","Apple","Orange","Grape","Melon"]

for fruit in myFruitArray {
    print(fruit)
}

var myNumber = [10,20,30,40,50,50]

for var number in myNumber {
    number = number/5
    print(number)
}
