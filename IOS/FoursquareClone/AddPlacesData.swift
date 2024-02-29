//
//  AddPlacesData.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 29.02.2024.
//

import Foundation
import UIKit

class PlacesModel {
    
    static let sharedInstance = PlacesModel()
    
    class Places {
        
    //1
        var name: String! // These are some of the properties of Places class
        var type: String!
        var atmosphere: String!
        var comment: String!
        var image: UIImage!
        
    //2
        init(name: String, type: String, atmosphere: String, image: UIImage) {
        }
    }
    
    private init(){}
}


