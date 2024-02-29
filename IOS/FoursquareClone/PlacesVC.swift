//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 26.02.2024.
//

import UIKit
import Parse

class PlacesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.done, target: self, action: #selector(logoutButtonClicked))
        
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
    
    func makeAlert(title : String , message : String){
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }

}
