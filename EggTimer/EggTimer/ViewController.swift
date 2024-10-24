//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var barProgressView: UIProgressView!
    @IBOutlet weak var doneTextLabel: UILabel!
    var timer = Timer()
    var eggTime : [String : Int] = ["Soft": 30, "Medium": 40, "Hard": 70]
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer?

    
    @IBAction func keyPressed(_ sender: Any) {
        
       
        
        timer.invalidate()
        
        let hardness = (sender as AnyObject).currentTitle!
        totalTime = eggTime[hardness!]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(eggTimer), userInfo: nil, repeats: true)
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @objc func eggTimer() {

        if secondsPassed <= totalTime {
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            barProgressView.progress = percentageProgress
            secondsPassed += 1
        }else {
            playSound()
            timer.invalidate()
            doneTextLabel.text = "Done!"
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                self.doneTextLabel.text = "How do you like your eggs ?"
            }
            barProgressView.progress = 0.0
            barProgressView.trackTintColor = .red
            secondsPassed = 0
        }
        
    }
    
}
