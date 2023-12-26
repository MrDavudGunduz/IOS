//
//  SettingsVC.swift
//  FirebaseInstaClone
//
//  Created by Davud Gündüz on 26.12.2023.
//

import UIKit

class SettingsVC: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
    

}
