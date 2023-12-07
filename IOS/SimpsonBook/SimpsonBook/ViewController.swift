//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Davud Gündüz on 7.12.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimson = [Simpson]()
    
    var chosenSimsons : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Simpson(name: "Homer Simpson", job: "Nuclear Safety", image: UIImage(named: "homer")!)
        let apu = Simpson(name: "Apu Nahasapeemapetilon", job: "Computer Engineer", image: UIImage(named: "apu")!)
        let bart = Simpson(name: "Bart Sipmson", job: "Student", image: UIImage(named: "bart")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisa")!)
        let marge = Simpson(name: "Marge Simpson", job: "Housewife", image: UIImage(named: "marge")!)
        let ned = Simpson(name: "Ned Flanders", job: "Unemployed", image: UIImage(named: "ned")!)
        
        mySimson.append(homer)
        mySimson.append(apu)
        mySimson.append(bart)
        mySimson.append(lisa)
        mySimson.append(marge)
        mySimson.append(ned)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimson[indexPath.row].name
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimsons = mySimson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimsons
        }
    }


}

