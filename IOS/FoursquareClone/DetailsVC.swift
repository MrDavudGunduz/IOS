//
//  DetailsVC.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 29.02.2024.
//

import UIKit
import MapKit
import Parse

class DetailsVC: UIViewController , MKMapViewDelegate , CLLocationManagerDelegate{
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var placeNameLabel: UILabel!
    
    @IBOutlet weak var placeAtmospherLabel: UILabel!
    
    @IBOutlet weak var placesTypeLabel: UILabel!
    
    @IBOutlet weak var placesCommentLabel: UILabel!
    
    @IBOutlet weak var mapKit: MKMapView!
    
    var choosenPlacesID = String()
    var choosenLatitude = Double()
    var choosenLongitude = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        getDataFromParse()
        
        mapKit.delegate = self
        
    }
    
    func getDataFromParse(){
        let query = PFQuery(className: "Places")
        query.whereKey("objectsId", equalTo: choosenPlacesID)
        query.findObjectsInBackground { objects, error in
            if error != nil {
                self.makeAlert(title: "Error!", message: error?.localizedDescription ?? "Error!")
            }else
            {
                if objects != nil {
                    let choosenPlacesObj = objects![0]
                    
                    if let placeName = choosenPlacesObj.object(forKey: "name") as? String{
                        self.placeNameLabel.text! = placeName
                        
                        if let placeAtmosphere = choosenPlacesObj.object(forKey: "atmosphere") as? String{
                            self.placeAtmospherLabel.text! = placeAtmosphere
                            
                            if let placeType = choosenPlacesObj.object(forKey: "type") as? String{
                                self.placesTypeLabel.text! = placeType
                                
                                if let placesComment = choosenPlacesObj.object(forKey: "comment") as? String{
                                    self.placesCommentLabel.text! = placesComment
                                    
                                    if let placesLatitude = choosenPlacesObj.object(forKey: "latitude") as? String{
                                        if let placesLatitudeDouble = Double(placesLatitude) {
                                            self.choosenLatitude = placesLatitudeDouble
                                            
                                            if let placesLongitude = choosenPlacesObj.object(forKey: "longitude") as? String{
                                                if let placesLongitudeDouble = Double(placesLongitude) {
                                                    self.choosenLongitude = placesLongitudeDouble
                                                    
                                                    let location = CLLocationCoordinate2D(latitude: self.choosenLatitude, longitude: self.choosenLongitude)
                                                    let span = MKCoordinateSpan(latitudeDelta: 0.020, longitudeDelta: 0.020)
                                                    let region = MKCoordinateRegion(center: location, span: span)
                                                    self.mapKit.setRegion(region, animated: true)
                                                    
                                                    let annotation = MKPointAnnotation()
                                                    annotation.coordinate = location
                                                    annotation.title = self.placeNameLabel.text
                                                    annotation.subtitle = self.placesTypeLabel.text
                                                    self.mapKit.addAnnotation(annotation)
                                                    
                                                    if let placesImageData = choosenPlacesObj.object(forKey: "image") as? PFFileObject{
                                                        placesImageData.getDataInBackground { data, error in
                                                            if error != nil {
                                                                self.makeAlert(title: "Error!", message: error?.localizedDescription ?? "Error")
                                                            }else {
                                                                if data != nil {
                                                                    self.imageView.image = UIImage(data: data!)
                                                                }
                                                            }
                                                        }
                                                    }
                                                    
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation{
            return nil
        }
        
        let reuseID = "pin"
        
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseID)
        
        if pinView == nil {
            pinView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseID)
            pinView?.canShowCallout = true
            let button = UIButton(type: .detailDisclosure)
            pinView?.rightCalloutAccessoryView = button
            
            
        }else
        {
            pinView?.annotation = annotation
        }
        
        return pinView
        
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if self.choosenLatitude != 0.0 && self.choosenLongitude != 0.0 {
            let requestLocation = CLLocation(latitude: self.choosenLatitude, longitude: self.choosenLongitude)
            
            CLGeocoder().reverseGeocodeLocation(requestLocation) { placesMark, error in
                
                if let placeMark = placesMark {
                    if placeMark.count > 0 {
                        let mkPlaceMark = MKPlacemark(placemark: placeMark[0])
                        let mapItem = MKMapItem(placemark: mkPlaceMark)
                        mapItem.name = self.placeNameLabel.text!
                        
                        let launchOptions = [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving]
                        mapItem.openInMaps(launchOptions : launchOptions)
                    }
                }
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
