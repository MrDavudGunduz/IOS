//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 19.02.2024.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
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
        
       /* let query = PFQuery(className: "user")
        query.findObjectsInBackground { objects, error in
            if error != nil {
                self.makeAlert(title: "Error!", message: error!.localizedDescription)
            }else{
                query.whereKey( "name", equalTo: "Davud")
            } */
        
        
        }
    
    
    @IBAction func loginClicked(_ sender: Any) {
        if usernameText.text != "" && emailText.text != "" && passwordText.text != "" {
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!) { user, error in
                if error != nil {
                    self.makeAlert(title: "Error!", message: error!.localizedDescription)
                }else
                {
                    // segue
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
        }else
        {
            self.makeAlert(title: "Error!", message: "Username , Email or password not found ")
        }
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        if usernameText.text != ""  {
            if emailText.text != "" {
                if passwordText.text != "" {
                    let user = PFUser()
                    user.username = usernameText.text!
                    user.email = emailText.text!
                    user.password = passwordText.text!
                    
                    user.signUpInBackground { succes, error in
                        if error != nil {
                            self.makeAlert(title: "Error!", message: error!.localizedDescription)
                        }else
                        {
                            // Segue
                            self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                        }
                    }
                    
                }else
                {
                    self.makeAlert(title: "Error!", message: "Please enter your username.")
                }
            }else{
                self.makeAlert(title: "Error!", message: "Please enter your email.")
            }
        }else{
            self.makeAlert(title: "Error!", message: "Please enter your password.")
        }
    }
    
    func makeAlert(title : String , message : String){
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    }
    
  
    



