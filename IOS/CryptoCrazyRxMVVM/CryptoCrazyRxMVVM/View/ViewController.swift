//
//  ViewController.swift
//  CryptoCrazyRxMVVM
//
//  Created by Davud Gündüz on 27.03.2024.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    var cryptoList = [CryptoModel]()
    let cryptoVm = ViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
       
        setupBinding()
        cryptoVm.requestData()
    }
    
    private func setupBinding() {
        cryptoVm
            .error
            .observe(on: MainScheduler.asyncInstance)
            .subscribe { errorString in
                print(errorString)
            }.disposed(by: disposeBag)
        
        cryptoVm
            .cryptos
            .observe(on: MainScheduler.asyncInstance)
            .subscribe { cryptoList in
                self.cryptoList = cryptoList
                self.tableView.reloadData()
            }.disposed(by: disposeBag)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cryptoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = cryptoList[indexPath.row].currency
        content.secondaryText = cryptoList[indexPath.row].price
        cell.contentConfiguration = content
        return cell
    }

}

