//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 26.02.2024.
//

import UIKit
import Parse

class PlacesVC: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var placesNameArray = [String]()
    var placesIDArray = [String]()
    var selectedPlacesID = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.done, target: self, action: #selector(logoutButtonClicked))
        
        tableView.dataSource = self
        tableView.delegate = self
        
        getDataFromParse()
    }
    
    func getDataFromParse(){
        let query = PFQuery(className: "Places")
        query.findObjectsInBackground { objects, error in
            if error != nil {
                self.makeAlert(title: "Error!", message: error?.localizedDescription ?? "Error!")
            }else{
                if objects != nil {
                    
                    self.placesNameArray.removeAll(keepingCapacity: false)
                    self.placesIDArray.removeAll(keepingCapacity: false)
                    
                    for object in objects! {
                        if let placeName = object.object(forKey: "name") as? String {
                            if let placeID = object.objectId{
                                
                                self.placesNameArray.append(placeName)
                                self.placesIDArray.append(placeID)
                                
                            }
                        }
                    }
                    self.tableView.reloadData()
                }
            }
        }
    }
    

    @objc func addButtonClicked(){
        // segue
        
        self.performSegue(withIdentifier: "toAddPlacesVC", sender: nil)
    }
    
    @objc func logoutButtonClicked(){
        // segue
        
        PFUser.logOutInBackground { error in
            if error != nil {
                self.makeAlert(title: "Error!", message: error!.localizedDescription)
            }else {
                self.performSegue(withIdentifier: "toViewController", sender: nil)
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destination = segue.destination as! DetailsVC
            
            destination.ChoosenPlacesID = selectedPlacesID
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPlacesID = placesIDArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = placesNameArray[indexPath.row]
        return cell
    }
    
    func makeAlert(title : String , message : String){
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }

}
