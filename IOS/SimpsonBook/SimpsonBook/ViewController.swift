//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Davud Gündüz on 7.12.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
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
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Homer Simpson"
        return cell
        
    }


}

