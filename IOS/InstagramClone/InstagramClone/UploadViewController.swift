//
//  UploadViewController.swift
//  InstagramClone
//
//  Created by Davud Gündüz on 28.01.2024.
//

import UIKit
import Firebase
import FirebaseStorage

class UploadViewController: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var uploadButton: UIButton!
    
    override func viewDidLoad() {
           super.viewDidLoad()

           imageView.isUserInteractionEnabled = true
           let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
           imageView.addGestureRecognizer(gestureRecognizer)
           
       }
       
       @objc func chooseImage() {
           
           let pickerController = UIImagePickerController()
           pickerController.delegate = self
           pickerController.sourceType = .camera
           present(pickerController, animated: true, completion: nil)
           
       }
       
       
       func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
           imageView.image = info[.originalImage] as? UIImage
           self.dismiss(animated: true, completion: nil)
       }
       
    @IBAction func saveClicked(_ sender: Any) {
        let storage = Storage.storage()
        let storageReference = storage.reference()
        let mediaFolder = storageReference.child("media")
        
        if let data = imageView.image?.jpegData(compressionQuality: 0.5){
            let uuid = UUID().uuidString
            let imageReference = mediaFolder.child("\(uuid).jpg")
            imageReference.putData(data) { metaData, error in
                if error != nil{
                    self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                }else {
                    imageReference.downloadURL { [self] url, error in
                        if error != nil{
                            
                            self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                            
                        }else {
                            
                            let imageUrl = url?.absoluteString
                            
                            // DATABASE
                            let firestoreDatabase = Firestore.firestore()
                            
                            var firestoreReference : DocumentReference
                            
                            let firestorePost = ["imageUrl" : imageUrl ?? imageView.image as Any ,"postedBy" : Auth.auth().currentUser!.email!,"postComment" : textField.text ?? "Post Comment never include" , "date" : "date" , "likes" : 0] as [String : Any]
                            
                            firestoreReference = firestoreDatabase.collection("Pots").addDocument(data: firestorePost , completion: { error in
                                if error != nil {
                                    self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                                } 
                            })
                            
                        }
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
