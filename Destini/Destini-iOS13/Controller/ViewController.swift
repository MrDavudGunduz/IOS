//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
       
        updateUI()
        
    }

    @IBAction func choiceClickedButtons(_ sender: UIButton) {
    
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector (updateUI), userInfo: nil, repeats: false)
        
        storyBrain.nextStory()
    }
    
    @objc func updateUI() {
        choice1Button.setTitle(storyBrain.getNextChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getNextChoice2(), for: .normal)
        storyLabel.text = storyBrain.getNextStory()
    }
}

