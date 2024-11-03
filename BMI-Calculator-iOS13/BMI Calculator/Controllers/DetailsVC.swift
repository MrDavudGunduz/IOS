//
//  DetailsVC.swift
//  BMI Calculator
//
//  Created by Davud Gündüz on 1.11.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

let calculator = CalculateVC()
class DetailsVC: UIViewController {

    @IBOutlet weak var resultTextLabel: UILabel!
    @IBOutlet weak var adviceTextLabel: UILabel!
    @IBOutlet weak var bmiValueTextLabel: UILabel!
    var bmiValue : String?
    var advice : String?
    var backgroundColor : UIColor?
    var result : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bmiValueTextLabel.text = bmiValue
        adviceTextLabel.text = advice
        view.backgroundColor = backgroundColor
        resultTextLabel.text = result
        
    }
    

    @IBAction func recalculateButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
