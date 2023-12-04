//
//  ViewController.swift
//  AlertProject
//
//  Created by Davud Gündüz on 4.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        /*
         let alert = UIAlertController(title: "Error", message: "Wrong Password", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { UIAlertAction in
             print("Button Clicked")
         }
         alert.addAction(okButton)
         self.present(alert, animated: true , completion: nil)
         */
        
        if userNameText.text == ""{
           makeAlert(titleIunput: "Error", messageInput: "Username not found")
        } else if passwordText.text == "" {
           makeAlert(titleIunput: "Error", messageInput: "Password not found")
        } else if passwordText2.text == "" {
           makeAlert(titleIunput: "Error", messageInput: "Password2 not found")
        } else if passwordText.text != passwordText2.text {
           makeAlert(titleIunput: "Error", messageInput: "Mismatched Password")
        } else {
            makeAlert(titleIunput: "Success", messageInput: "Record created successfully")
        }
    }
    
    func makeAlert( titleIunput : String , messageInput : String){
        let alert = UIAlertController(title: titleIunput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true ,completion: nil)
    }
    
}

