//
//  ViewController.swift
//  ObjectsWithCodes
//
//  Created by Davud Gündüz on 22.11.2023.
//

import UIKit

class ViewController: UIViewController {

    
    let myLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width 
        let height = view.frame.size.height
        
        myLabel.text = "Text Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("Save", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        
        myButton.frame = CGRect(x: width/2 - 100, y: height/2 - 200, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myFunction), for: UIControl.Event.touchUpInside)
        
        
    }
   @objc func myFunction()  {
       myLabel.text = "Hello World"
    }

}

