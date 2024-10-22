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
        
        /*aKeyUIButton.tag = 1
         aKeyUIButton.addTarget(self, action: #selector(keyPressed), for: .touchUpInside)
         
         
         bKeyUIButton.tag = 2
         bKeyUIButton.addTarget(self, action: #selector(keyPressed), for: .touchUpInside)
         
         cKeyUIButton.tag = 3
         cKeyUIButton.addTarget(self, action: #selector(keyPressed), for: .touchUpInside)
         
         dKeyUIButton.tag = 4
         dKeyUIButton.addTarget(self, action: #selector(keyPressed), for: .touchUpInside)
         
         eKeyUIButton.tag = 5
         eKeyUIButton.addTarget(self, action: #selector(keyPressed), for: .touchUpInside)
         
         fKeyUIButton.tag = 6
         fKeyUIButton.addTarget(self, action: #selector(keyPressed), for: .touchUpInside)
         
         gKeyUIButton.tag = 7
         gKeyUIButton.addTarget(self, action: #selector(keyPressed), for: .touchUpInside)*/
        
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        /*print("\(sender.titleLabel!.text!)")
         switch sender.tag {
         case 1 :
         playSound(soundsName: "A")
         break
         case 2 :
         playSound(soundsName: "B")
         break
         case 3 :
         playSound(soundsName: "C")
         break
         case 4 :
         playSound(soundsName: "D")
         break
         case 5 :
         playSound(soundsName: "E")
         break
         case 6 :
         playSound(soundsName: "F")
         break
         case 7 :
         playSound(soundsName: "G")
         break
         default : break
         }*/
        playSound(soundsName: sender.currentTitle!)
        
        sender.alpha = 0.5

           DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
               sender.alpha = 1.0
           }
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
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
        
        
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
