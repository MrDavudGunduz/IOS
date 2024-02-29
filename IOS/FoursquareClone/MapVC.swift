//
//  MapVC.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 28.02.2024.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.done, target: self, action: #selector(saveButtonClicked))
    }
    
    @objc func saveButtonClicked(){
        // Parse save prosses
        
    }

}
