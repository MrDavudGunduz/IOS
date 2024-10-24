//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var eggTime : [String : Int] = ["Soft": 5, "Medium": 7, "Hard": 12]

    @IBAction func keyPressed(_ sender: Any) {
        let hardness = (sender as AnyObject).currentTitle!

        switch hardness {
        case "Soft":
            eggTimer(time: Int(eggTime["Soft"]!))
        case "Medium":
            eggTimer(time: Int(eggTime["Medium"]!))
        case "Hard":
            eggTimer(time: Int(eggTime["Hard"]!))
        default :
            break
        }
    }
    
    func eggTimer(time: Int) {
        timer.invalidate()
        
        var runCount = 0  //for a 60 second timer
        runCount = time
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                print(runCount)
                runCount -= 1

                if runCount < 0 {
                    timer.invalidate()
                }
            }
    }
    
}
