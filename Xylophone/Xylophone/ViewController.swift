//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer?
    
    @IBOutlet weak var dKeyUIButton: UIButton!
   
    @IBOutlet weak var bKeyUIButton: UIButton!
    @IBOutlet weak var aKeyUIButton: UIButton!
    @IBOutlet weak var gKeyUIButton: UIButton!
    @IBOutlet weak var eKeyUIButton: UIButton!
    
    @IBOutlet weak var fKeyUIButton: UIButton!
    @IBOutlet weak var cKeyUIButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCornerRadius()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundsName: "C")
    }
    
    
   
    
    func addCornerRadius() {
        dKeyUIButton.layer.cornerRadius = 50
        dKeyUIButton.layer.masksToBounds = true
        
        bKeyUIButton.layer.cornerRadius = 50
        bKeyUIButton.layer.masksToBounds = true
        
        aKeyUIButton.layer.cornerRadius = 50
        aKeyUIButton.layer.masksToBounds = true
        
        gKeyUIButton.layer.cornerRadius = 50
        gKeyUIButton.layer.masksToBounds = true
        
        eKeyUIButton.layer.cornerRadius = 50
        eKeyUIButton.layer.masksToBounds = true
        
        fKeyUIButton.layer.cornerRadius = 50
        fKeyUIButton.layer.masksToBounds = true
        
        eKeyUIButton.layer.cornerRadius = 50
        eKeyUIButton.layer.masksToBounds = true
        
        cKeyUIButton.layer.cornerRadius = 50
        cKeyUIButton.layer.masksToBounds = true
    }

    func playSound(soundsName: String) {
        
        let url = Bundle.main.url(forResource: soundsName, withExtension: "wav")
        let player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
        /*guard let path = Bundle.main.path(forResource: soundsName, ofType: "wav") else { return }
        let url = URL(fileURLWithPath: path)
        
        do{
            try player = AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error{
            print(error.localizedDescription)
        }*/
    }
}


