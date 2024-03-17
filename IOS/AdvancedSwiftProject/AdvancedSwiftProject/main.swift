//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Davud Gündüz on 17.03.2024.
//

import Foundation

//print("Hello, World!")

let classJames = Musician(name: "James", age: 23, instrument: "Guitar")

var structJames = MusicianStruct(name: "James", age: 23, instrument: "Guitar")

// IMMUTABLE STRUCT

//print(classJames.self.name)

//print(structJames.age)

classJames.age = 51
//print(classJames.self.age)

structJames.age = 51
//print(structJames.age)

// REFERENCE VS VALUE

let copyOfClassJames = classJames

var copyOfStructJames = structJames

copyOfClassJames.age = 57

//print(copyOfClassJames.age)
//print(classJames.age)

copyOfStructJames.age = 57

//print(copyOfStructJames.age)
//print(structJames.age)

// Function vs Mutating Function

//print(classJames.age)

classJames.bithday()

//print(classJames.age)

//print(structJames.age)

structJames.structBirthday()

//print(structJames.age)

// TUPLE

//let myTuple = (1,2,3)
var myTuple = (1,2,3)
//print(myTuple.0)

myTuple.0 = 10
//print(myTuple.0)

var myTuple2 = ("Davut",23)
var myTuple3 = (2,[10,20,30,40])

//print(myTuple3.1[1])

let predefinedTuple : (String,String)

predefinedTuple.0 = "Davut"
predefinedTuple.1 = "Gunduz"

let newTuple = (name : "Selim" , age : 16)

//print(newTuple.name)
//print(newTuple.age)

// Guard let vs if let

let number = "5"

func covertToIntIf (number : String) -> Int {
    if let myInteger = Int(number){
        return myInteger
    }else{
        return 0
    }
}

func convertToIntGuard (number : String) -> Int {
    guard let myInteger = Int(number) else {
        return 0
    }
    return myInteger
}

//print(convertToIntGuard(number: number))
//print(covertToIntIf(number: number))

let month = 3

switch month {
case 1 :
    print("January")
case 2 :
    print("February")
case 3 :
    print("March")
case 4 :
    print("April")
case 5 :
    print("May")
case 6 :
    print("June")
case 7 :
    print("July")
case 8 :
    print("August")
case 9 :
    print("September")
case 10 :
    print("October")
case 11 :
    print("November")
case 12 :
    print("December")

default:
    print("Invalid month")
}













