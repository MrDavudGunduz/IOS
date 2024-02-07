//
//  FeedViewController.swift
//  InstagramClone
//
//  Created by Davud Gündüz on 28.01.2024.
//

import UIKit
import Firebase

class FeedViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
 
    @IBOutlet weak var tableView: UITableView!
    
    var userEmailArray = [String]()
    var userCommentArray = [String]()
    var likeArray = [Int]()
    var userImageArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userEmailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.userEmailLabel.text = userEmailArray[indexPath.row]
        cell.userImageView.image = UIImage(named: "selected.png")
        cell.commentLabel.text = userCommentArray[indexPath.row]
        cell.likeLabel.text = String(likeArray[indexPath.row])
        return cell
    }
    
    func getDataFromFirebase(){
        let fireStoreDatabase = Firestore.firestore()
        fireStoreDatabase.collection("Posts").addSnapshotListener { snapShot, error in
            if error != nil {
                self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
            }else{
                
                if snapShot?.isEmpty != true {
                    
                    for document in snapShot!.documents{
                        let documentID = document.documentID
                        
                        if let postedBy = document.get("postedBy") as? String {
                            
                            self.userEmailArray.append(postedBy)
                            
                            if let postComment = document.get("postComment") as? String {
                                
                                self.userEmailArray.append(postComment)
                                
                                if let likes = document.get("likes") as? String {
                                    
                                    self.userEmailArray.append(likes)
                                    
                                    if let imageUrl = document.get("imageUrl") as? String {
                                        
                                        self.userEmailArray.append(imageUrl)
                                        
                                    }else {
                                        self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                                    }
                                }else {
                                    self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                                }
                            }else {
                                self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                            }
                        }else {
                            self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                        }
                        self.tableView.reloadData()
                    }
                }
                
            }
        }
    }
    
    func makeAlert(titleInput : String, messageInput : String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    

}
