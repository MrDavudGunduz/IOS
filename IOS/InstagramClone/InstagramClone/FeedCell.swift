//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Davud Gündüz on 7.02.2024.
//

import UIKit
import Firebase

class FeedCell: UITableViewCell {

    @IBOutlet weak var userEmailLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var likeLabel: UILabel!
    
    @IBOutlet weak var hiddenLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func likeButton(_ sender: Any) {
        let firestoreDatabase = Firestore.firestore()
        
        if let likeCount = Int(hiddenLabel.text!) {
         
            let likeStoreCount = ["likes" : likeCount + 1] as [String : Any]
            
            firestoreDatabase.collection("Posts").document(hiddenLabel.text!).setData(likeStoreCount, merge: true)
        }
        
        
    }
    
 
}
