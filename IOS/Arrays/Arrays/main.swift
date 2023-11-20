//
//  main.swift
//  Arrays
//
//  Created by Davud Gündüz on 19.11.2023.
//

import Foundation

var myFavoriteMovies = ["The Lord Of The Rings","Harry Potter","Interstellar"]

print(myFavoriteMovies[0])
print(myFavoriteMovies[1].uppercased())
print("Array count = ", myFavoriteMovies.count)
print(myFavoriteMovies.last!)

var myFavorites = ["Friends", 7 , true , "Apple" ] as [Any]

var studentNames : [String]

studentNames = ["Davut","Mecit","Selim","Turhan","Husam"]
var studentNamesSort = studentNames.sorted()
print(studentNamesSort[0])
print(studentNamesSort[1])

var myNumberArray = [1,2,4,6,8]

var mySet : Set = [1,2,3,4,5]
var charSet : Set = ["a","c","v","s"]

var internetArray  = [1,2,3,4,5,7,5,1,2,2,3]
var internetSet = Set(internetArray)

print(internetArray)
print(internetSet)

var mySet1 : Set = [1,2,3,4,5,6,9]
var mySet2 : Set = [0,9,8,7,5,6,2,1]

var mySet3 = mySet1.union(mySet2)

print(mySet3)

var myFavoriteSeries = [ "Friends" : "Mathew Peryy" , "Ezel" : "Kenan Imirzalioglu" ]
print(myFavoriteSeries.keys)
print(myFavoriteSeries.values)


