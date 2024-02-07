//
//  FeedViewController.swift
//  InstagramClone
//
//  Created by Davud Gündüz on 28.01.2024.
//

import UIKit

class FeedViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
 
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.userEmailLabel.text = "username@gmail.com"
        cell.userImageView.image = UIImage(named: "selected.png")
        cell.commentLabel.text = "comment"
        cell.likeLabel.text = "0"
        return cell
    }
    
    

}
