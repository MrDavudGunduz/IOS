//
//  DetailsVC.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 29.02.2024.
//

import UIKit
import MapKit

class DetailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var placeNameLabel: UILabel!
    
    @IBOutlet weak var placeAtmospherLabel: UILabel!
    
    @IBOutlet weak var placesTypeLabel: UILabel!
    
    @IBOutlet weak var placesCommentLabel: UILabel!
    
    @IBOutlet weak var mapKit: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
