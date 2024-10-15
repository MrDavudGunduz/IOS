//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionTextLabel: UILabel!
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var questionsArray = ["What's the weirdest dream you've ever had?","If you could travel to any time period in a time machine, what time period would you choose and why?","If you could change one thing about yourself, what would it be?"," When asked what your most-fun memory from childhood is, what’s the very first memory you think of??", "What is the most embarrassing thing you've ever done?","If you could have any fictional character's wardrobe, whose would it be?" ]


    @IBOutlet weak var askClickedButton: UIButton!
    
    
    
  
    
    @IBAction func asButton(_ sender: Any) {
        questionTextLabel.text = questionsArray.randomElement()
        ballImageView.image = UIImage(named: ballArray.randomElement() ?? "ball1")
    }
}



