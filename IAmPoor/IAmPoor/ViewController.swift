//
//  ViewController.swift
//  IAmPoor
//
//  Created by Davud Gündüz on 12.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var stoneView: UIImageView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stoneView.isUserInteractionEnabled = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        
        stoneView.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        performSegue(withIdentifier: "toPoorManDetails", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSectoPoorManDetailsondVC" {
            // as -- casting
            let destinationVC = segue.destination as! PoorManDetails
            
        }
    }


}

