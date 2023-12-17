//
//  ListViewController.swift
//  TravelBookProject
//
//  Created by Davud Gündüz on 17.12.2023.
//

import UIKit

class ListViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        tableView.dataSource = self
        tableView.delegate = self
       
    }
    
    @objc func addButtonClicked(){
        performSegue(withIdentifier: "toViewController", sender: <#T##Any?#>)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    


}
