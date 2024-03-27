//
//  WebService.swift
//  CryptoCrazyRxMVVM
//
//  Created by Davud Gündüz on 27.03.2024.
//

import Foundation

enum CryptoError : Error {
    case serverError
    case parsingError
}

class WebService {
    
    func downloadCurrencies(url : URL , completion : @escaping (Result<[CryptoModel],CryptoError>) -> () ){
     
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completion(.failure(.serverError))
            }else {
                if let data = data {
                    let cryptoList = try? JSONDecoder().decode([CryptoModel].self, from: data)
                    if let cryptoList = cryptoList {
                        completion(.success(cryptoList))
                    }else {
                        completion(.failure(.parsingError))
                    }
                }
            }
        }.resume()
    }
}
