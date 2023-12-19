//
//  ViewController.swift
//  DarkMode
//
//  Created by Davud Gündüz on 19.12.2023.
//

import UIKit



class ViewController: UIViewController   {
    
    @IBOutlet weak var changeButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.systemRed
        }else {
            changeButton.tintColor = UIColor.systemBlue
        }
        
        
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?){
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.systemRed
        }else {
            changeButton.tintColor = UIColor.systemBlue
        }
    }
    
 
    

}

