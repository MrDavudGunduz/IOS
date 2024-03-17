//
//  MusicianClass.swift
//  AdvancedSwiftProject
//
//  Created by Davud Gündüz on 17.03.2024.
//

import Foundation

class Musician {
    
    var name : String
    var age : Int
    var instrument : String
    
    init(name: String, age: Int, instrument: String) {
        self.name = name
        self.age = age
        self.instrument = instrument
    }
    
    func bithday(){
        age += 1
    }
}
