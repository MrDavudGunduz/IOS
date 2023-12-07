//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Davud Gündüz on 7.12.2023.
//

import Foundation

class SuperMusician : Musicians {
    func sign2() {
        print("seni doyuncaaaaa")
        print("hep kiskandim seni elden yillar boyunca")
    }
    
    override func sign() {
       super.sign()
        print("aramiza kimse gelip girmesin")
    }
}
