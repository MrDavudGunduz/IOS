//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rollUIButtonClicked: UIButton!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
   
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    var diceIVArray: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive" , "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // The general logic of programming with Swift is who.what = value
        //rollDiceGestureRecognizer()
      
    }
    
   /* func rollDiceGestureRecognizer() {
        rollUIButtonClicked.isUserInteractionEnabled = true
        let rollButtonGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(rollClickedButton))
        rollUIButtonClicked.addGestureRecognizer(rollButtonGestureRecognizer)
        
    }*/
    
    @IBAction func rollClickedButton(_ sender: Any) {
    
        diceImageViewOne.image = UIImage(named: diceIVArray[Int.random(in: 0..<6)])
        diceImageViewTwo.image = UIImage(named: diceIVArray[Int.random(in: 0..<6)])
        
    }
    

}

