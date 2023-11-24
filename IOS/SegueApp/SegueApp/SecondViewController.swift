//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Davud Gündüz on 24.11.2023.
//

import UIKit



class SecondViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = " "
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = myName
    }
    

}
