//
//  UploadVC.swift
//  FirebaseInstaClone
//
//  Created by Davud Gündüz on 26.12.2023.
//

import UIKit
import Firebase
import FirebaseStorage

class UploadVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var commentTextField: UITextField!
    @IBOutlet weak var uploadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImages))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func chooseImages(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func uploadClicked(_ sender: Any) {
        let storage = Storage.storage()
        let storageReference = storage.reference()
        let mediaFolder = storageReference.child("media")
        
        if let data = imageView.image?.jpegData(compressionQuality: 0.5){
            let uuid = UUID().uuidString
            
            let imageReference = mediaFolder.child("\(uuid).jpg")
            imageReference.putData(data, metadata: nil) { metadata, error in
                if error != nil{
                    self.makeAlert(titleInput: "Error", messageInput: String(error!.localizedDescription))
                }else {
                    imageReference.downloadURL { url, error in
                        if error != nil {
                            self.makeAlert(titleInput: "Error", messageInput: String(error!.localizedDescription))
                        }else {
                            let imageUrl = url?.absoluteString
                            
                            // DATABASE
                            
                            let firestoreDatabase = Firestore.firestore()
                            var firestoreRef : DocumentReference? = nil
                            
                            let firestorePost = ["imageUrl" : imageUrl! , "postedBy" : Auth.auth().currentUser!.email! , "postComment" : self.commentTextField.text as Any , "date" : FieldValue.serverTimestamp() , "likes" : 0] as [String : Any]
                            
                            firestoreRef = firestoreDatabase.collection("Posts").addDocument(data: firestorePost, completion: { error in
                                if error != nil {
                                    self.makeAlert(titleInput: "Error", messageInput: error!.localizedDescription )
                                }else{
                                    self.imageView.image = UIImage(named: "select-2")
                                    self.commentTextField.text = ""
                                    self.tabBarController?.selectedIndex = 0
                                }
                            })
                            
                        }
                    }
                }
            }
        }
    }
    
    func makeAlert(titleInput : String , messageInput : String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}
