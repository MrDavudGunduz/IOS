//
//  MusicianStruct.swift
//  AdvancedSwiftProject
//
//  Created by Davud Gündüz on 17.03.2024.
//

import Foundation

struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    
    mutating func structBirthday(){
        self.age += 1
    }
}
