//
//  ViewController.swift
//  CurrencyConverterApp
//
//  Created by Davud Gündüz on 20.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gsbLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    @IBOutlet weak var btcLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesButton(_ sender: Any) {
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=52ee6f0e66f479b042d3026eae618bec")
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                let alert = UIAlertController(title: "Error!", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }else {
                if data != nil {
                   
                    do {
                        let jsonRespon = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String,Any>
                        
                        DispatchQueue.main.async {
                            if let rates = jsonRespon["rates"] as? [String : Any] {
                                
                                if let cad = rates["CAD"] as? Double {
                                    self.cadLabel.text = "CAD : \(cad)"
                                }
                                if let chf = rates["CHF"] as? Double {
                                    self.chfLabel.text = "CHF : \(chf)"
                                }
                                if let gsb = rates["GSB"] as? Double {
                                    self.gsbLabel.text = "GSB : \(gsb)"
                                }
                                if let usd = rates["USD"] as? Double {
                                    self.usdLabel.text = "USD : \(usd)"
                                }
                                if let tl = rates["TRY"] as? Double {
                                    self.tryLabel.text = "TRY : \(tl)"
                                }
                                if let btc = rates["CAD"] as? Double {
                                    self.btcLabel.text = "BTC : \(btc)"
                                }
                                
                            }
                        }
                        
                    }catch{
                        print("ERROR!!!")
                    }
                    
                }
            }
        }
        
        task.resume()
        
        
        
    }
    
}

