//
//  MapVC.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 28.02.2024.
//

import UIKit
import MapKit
import Parse

class MapVC: UIViewController , MKMapViewDelegate , CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var choosenLatitude = ""
    var choosenLongitude = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.done, target: self, action: #selector(saveButtonClicked))
        
        mapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        let recognizer = UILongPressGestureRecognizer(target: self, action: #selector(chooseLocation(gestureRecognizer: )))
        recognizer.minimumPressDuration = 3
        mapView.addGestureRecognizer(recognizer)
        
    }
    
    @objc func chooseLocation(gestureRecognizer : UIGestureRecognizer){
        if gestureRecognizer.state == UIGestureRecognizer.State.began{
            let touch = gestureRecognizer.location( in: self.mapView)
            let coordinates = mapView.convert(touch, toCoordinateFrom: self.mapView)
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinates
            annotation.title = PlacesModel.sharedInstance.name
            annotation.subtitle = PlacesModel.sharedInstance.type
            
            self.mapView.addAnnotation(annotation)
            
            self.choosenLatitude = String(coordinates.latitude)
            self.choosenLongitude = String(coordinates.longitude)
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
    }
    
    @objc func saveButtonClicked(){
        // Parse save prosses
        
        let placesModel = PlacesModel.sharedInstance
        
        let object = PFObject(className: "Places")
        object["name"] = placesModel.name
        object["type"] = placesModel.type
        object["atmosphere"] = placesModel.atmosphere
        object["comment"] = placesModel.comment
        object["latitude"] = self.choosenLatitude
        object["longitude"] = self.choosenLongitude
        
        // image save
        
        if let imageData = placesModel.image.jpegData(compressionQuality: 0.5){
            object["image"] = PFFileObject(name: "\(UUID.self).jpg", data: imageData)
        }
        
        object.saveInBackground { succes, error in
            if error != nil {
                self.makeAlert(title: "Error!", message: error!.localizedDescription)
            }else
            {
                self.performSegue(withIdentifier: "fromMapToPlacesVC", sender: nil)
            }
        }
    }
    
    func makeAlert(title : String , message : String){
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }

}
