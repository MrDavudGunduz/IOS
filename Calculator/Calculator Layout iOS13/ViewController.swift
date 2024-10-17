//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultTextLabel: UILabel!
    
    var result: Double = 0
    var numbersArray: [Double] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func allClearTurnClickedButton(_ sender: Any) {
        result = 0
        resultTextLabel.text = String(result)
        numbersArray.removeAll(keepingCapacity: false)
    }
    @IBAction func divisionClickedButton(_ sender: Any) {
        let division = numbersArray.reduce(1, /)
        result = division
        resultTextLabel.text = String(result)
    }
    @IBAction func multiplyClickedButton(_ sender: Any) {
        let multiply = numbersArray.reduce(1, *)
        result = multiply
        resultTextLabel.text = String(result)
    }
    @IBAction func minesClickedButton(_ sender: Any) {
        let sum = numbersArray.reduce(0, -)
        result = sum
        resultTextLabel.text = String(result)
    }
    @IBAction func plusClickedButton(_ sender: Any) {
        let sum = numbersArray.reduce(0, +)
        result = sum
        resultTextLabel.text = String(result)
    }
    
    @IBAction func percentageClickedButton(_ sender: Any) {
    }
    @IBAction func plusminesClickedButton(_ sender: Any) {
    }
    @IBAction func equalClickedButton(_ sender: Any) {
    }
    @IBAction func twoClicedButton(_ sender: Any) {
    }
    
    @IBAction func fourClickedButton(_ sender: Any) {
    }
    
    @IBAction func threeClickedButton(_ sender: Any) {
    }
    
    @IBAction func oneClickedButton(_ sender: Any) {
    }
    
    @IBAction func zeroClickedButton(_ sender: Any) {
    }
    
    @IBAction func nineClickedButton(_ sender: Any) {
    }
    
    @IBAction func eightClickedButton(_ sender: Any) {
    }
    
    @IBAction func sevenClickedButton(_ sender: Any) {
    }
    
    @IBAction func sixClickedButton(_ sender: Any) {
    }
    
    @IBAction func fiveClickedButton(_ sender: Any) {
        
        
    }
    
    @IBAction func pointClickedButton(_ sender: Any) {
    }
}

