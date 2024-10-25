//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var barProgress: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionText: UILabel!
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        barProgress.progress = 0
        updateUI()
        
    }

    @IBAction func aswerClickedButton(_ sender: UIButton) {
        
        if questionNumber < quiz.count {
            
            if sender.currentTitle! == quiz[questionNumber][1] {
                updateUI()
            }else {
                updateUI()
            }
            
        }else {
            barProgress.progress = 0
            questionNumber = 0
            updateUI()
        }
       
    }
    
    func updateUI(){
        questionText.text = quiz[questionNumber][0]
        questionNumber += 1
        barProgress.progress += 0.2
    }
}

