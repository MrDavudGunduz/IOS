//
//  ViewController.swift
//  FirstApp
//
//  Created by Davud Gündüz on 19.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func changeClick(_ sender: Any) {
        imageView.image = UIImage(named: "Duman2")
    }
    

}

