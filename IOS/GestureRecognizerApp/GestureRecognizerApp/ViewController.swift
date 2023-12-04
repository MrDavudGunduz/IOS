//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Davud Gündüz on 4.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isKaan = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecodnizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecodnizer)
        
    }
    
    @objc func changePic(){
       
        
        if isKaan == true{
            imageView.image = UIImage(named: "harun")
            myLabel.text = "Harun Tekin"
            isKaan = false
        }else {
            imageView.image = UIImage(named: "Kaan")
            myLabel.text = "Kaan Tangoze"
            isKaan = true
        }
        
    }


}

