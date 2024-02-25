//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 19.02.2024.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
       /* let parseObj = PFObject(className: "user")
        parseObj["name"] = "Davud"
        parseObj["email"] = "davud.gunduz01@gmail.com"
        parseObj["password"] = "D-a-v-u-d123"
        parseObj.saveInBackground { success, error in
            if error != nil {
                self.makeAlert(title: "Error!", message: error!.localizedDescription)
            }else {
                
            } */
        
        let query = PFQuery(className: "user")
        query.findObjectsInBackground { objects, error in
            if error != nil {
                self.makeAlert(title: "Error!", message: error!.localizedDescription)
            }else{
                query.whereKey( "name", equalTo: "Davud")
                
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

