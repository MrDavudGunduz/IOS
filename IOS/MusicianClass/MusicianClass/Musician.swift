//
//  Musician.swift
//  MusicianClass
//
//  Created by Davud Gündüz on 7.12.2023.
//

import Foundation

enum MusicianType {
case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
}

class Musicians {
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    init(name: String, age: Int, instrument: String, type : MusicianType) {
        self.name = name
        self.age = age
        self.instrument = instrument
        self.type = type
    }
    
    func sign(){
        print("Sevemedim kara gozlum")
    }
}
