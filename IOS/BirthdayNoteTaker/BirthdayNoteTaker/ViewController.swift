//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Davud Gündüz on 23.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField:UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if let newName = storedName as? String {
            nameLabel.text = newName
        }
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = newBirthday
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text, forKey: "Name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "Birthday")
        nameLabel.text = nameTextField.text
        birthdayLabel.text = birthdayTextField.text
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if  storedName != nil {
            UserDefaults.standard.removeObject(forKey: "Name")
            nameLabel.text = "Name : "
        }
        
        if  storedBirthday != nil {
            UserDefaults.standard.removeObject(forKey: "Birthday")
            birthdayLabel.text = "Birthday : "
        }
    }
    
}

