//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateVC: UIViewController {

    @IBOutlet weak var weightUISlider: UISlider!
    @IBOutlet weak var weightValueTextLabel: UILabel!
    @IBOutlet weak var heightUISlider: UISlider!
    @IBOutlet weak var heightValueTextLabel: UILabel!
    @IBOutlet weak var calculateTextLabel: UILabel!
    
    var bmiValue = Float(0)
    var calculateBrain = CalculateBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    @IBAction func weightSliderFunc(_ sender: Any) {
        weightValueTextLabel.text = String("\(weightUISlider.value) kg")
    }
    @IBAction func heightSlider(_ sender: UISlider) {
            
        heightValueTextLabel.text = String(format: "%.2f m", sender.value)
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        let weight = Int(weightUISlider.value)
        let height = Float(heightUISlider.value)
        
        calculateBrain.getBMICalculate(weightValue: Float(weight), heightValue: height)
        
        self.performSegue(withIdentifier: "toDetailsVC", sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.bmi?.advice
            destinationVC.backgroundColor = calculateBrain.bmi?.color
            destinationVC.result = calculateBrain.bmi?.category
        }
    }
    
}

