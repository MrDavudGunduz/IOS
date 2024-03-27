//
//  ViewModel.swift
//  CryptoCrazyRxMVVM
//
//  Created by Davud Gündüz on 27.03.2024.
//

import Foundation
import RxSwift
import RxCocoa

class ViewModel {
    
    let cryptos : PublishSubject<[CryptoModel]> = PublishSubject()
    let error : PublishSubject<String> = PublishSubject()
    let loading : PublishSubject<Bool> = PublishSubject()
   
    func requestData(){
        self.loading.onNext(true)
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
               WebService().downloadCurrencies(url: url) { result in
                   self.loading.onNext(false)
                   switch result {
                   case .success(let cryptos):
                       self.cryptos.onNext(cryptos)
                   case .failure(let error):
                       switch error {
                       case .parsingError :
                           self.error.onNext("Parsing Error!!!")
                       case .serverError :
                           self.error.onNext("Server Error!!!")
                       }
                   }
                   
               }
        
    }
}
