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
        
        let userAnswer = sender.currentTitle!
        
        if questionNumber < quiz.count {
            
            if userAnswer == quiz[questionNumber].answer{
                sender.backgroundColor = .green
                
            }else {
                sender.backgroundColor = .red
            }
            
            Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector (updateUI), userInfo: nil, repeats: false)
            
        }else {
            barProgress.progress = 0
            questionNumber = 0
        }
        
    }
        
    @objc func updateUI(){
        questionText.text = quiz[questionNumber].text
        barProgress.progress = Float(questionNumber + 1) / Float(quiz.count)
        questionNumber += 1
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

