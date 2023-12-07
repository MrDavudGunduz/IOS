//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Davud Gündüz on 7.12.2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        image.image = selectedSimpson?.image
    }
    


}
