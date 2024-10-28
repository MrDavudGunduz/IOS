//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreText: UILabel!
    
    @IBOutlet weak var barProgress: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionText: UILabel!
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        barProgress.progress = 0
        
        updateUI()
        
    }

    @IBAction func aswerClickedButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGetItRight = quizBrain.checkingAnswer(userAnswer)
        
        if userGetItRight{
            sender.backgroundColor = UIColor.green
            
        }else {
            sender.backgroundColor = UIColor.red
        }
        
            Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector (updateUI), userInfo: nil, repeats: false)
            
        quizBrain.nextQuestion()
        
    }
        
    @objc func updateUI(){
        questionText.text = quizBrain.getQuestionText()
        barProgress.progress = quizBrain.getProgress()
        scoreText.text = String(quizBrain.getScore())
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

