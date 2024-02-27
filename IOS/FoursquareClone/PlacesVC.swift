//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 26.02.2024.
//

import UIKit

class PlacesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
    }
    

    @objc func addButtonClicked(){
        // segue
        
    }

}
