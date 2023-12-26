//
//  SettingsVC.swift
//  FirebaseInstaClone
//
//  Created by Davud Gündüz on 26.12.2023.
//

import UIKit
import Firebase

class SettingsVC: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        }catch{
            print("Error!!!")
        }
    }
    

}
