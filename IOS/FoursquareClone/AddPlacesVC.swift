//
//  AddPlacesVC.swift
//  FoursquareClone
//
//  Created by Davud Gündüz on 28.02.2024.
//

import UIKit

class AddPlacesVC: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate {

    @IBOutlet weak var placesNameText: UITextField!
    
    @IBOutlet weak var placesLocationText: UITextField!
    
    @IBOutlet weak var placesTypeText: UITextField!
    
    @IBOutlet weak var placesCommentText: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        imageView.addGestureRecognizer(gestureRecognizer)
        
        
    }
    

    @IBAction func nextButtonClicked(_ sender: Any) {
        
        if placesNameText.text! != "" {
            if placesTypeText.text! != "" {
                if placesLocationText.text! != "" {
                    if placesCommentText.text! != "" {
                        let placesModel = PlacesModel.Places(name: placesNameText.text!, type: placesTypeText.text!, atmosphere: placesLocationText.text!, image: imageView.image!)
                        
                        self.performSegue(withIdentifier: "toMapKit", sender: nil)
                        
                    }else{
                        self.makeAlert(title: "Error!", message: "Places Comment? ")
                    }
                }else{
                    self.makeAlert(title: "Error!", message: "Places Atmosphere? ")
                }
            }else{
                self.makeAlert(title: "Error!", message: "Places Type? ")
            }
        } else {
            self.makeAlert(title: "Error!", message: "Places Name? ")
        }
        
        
    }
    
    @objc func chooseImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true , completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    func makeAlert(title : String , message : String){
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }

}
