//
//  ViewController.swift
//  MLImagesRecognition
//
//  Created by Davud Gündüz on 8.03.2024.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var choosenImage = CIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func selectClickedButton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
        
      
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
        
        if let ciImage = CIImage(image: imageView.image!){
            choosenImage = ciImage
            
        }
        recognizeImage(image : choosenImage)
    }
    
    func recognizeImage(image : CIImage){
     
        if let  model = try? VNCoreMLModel(for: MobileNetV2().model){
           let request = VNCoreMLRequest(model: model) { vnrequest, error in
                if error != nil {
                    self.makeAlert(title: "Error!", message: error?.localizedDescription ?? "Error!" )
                }else
                {
                    if let results = vnrequest.results as? [VNClassificationObservation]{
                        if results.count > 0 {
                            let topResult = results.first
                            
                            DispatchQueue.main.async {
                                let confidence = (topResult?.confidence ?? 0) * 100
                                let rounded = Int(confidence)
                                
                                self.resultLabel.text = "\(rounded)% it is : \(String(describing: topResult?.identifier))"
                            }
                        }
                    }
                }
                
                    
                }
                                let handler = VNImageRequestHandler(ciImage: image)
                                DispatchQueue.global(qos: .userInteractive).async{
                                do {
                                    try handler.perform([request])
                                    }catch {
                                            print("error")
                                        }
            }
            
        }
    }
    
    func makeAlert(title : String , message : String){
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    
}

