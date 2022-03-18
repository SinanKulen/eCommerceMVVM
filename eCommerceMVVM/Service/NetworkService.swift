//
//  NetworkService.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 10.03.2022.
//

import Foundation

protocol NetworkServiceProtocol
{
    func fetchData(completion: @escaping(Result<ProductResponse, NetworkErrors>) -> Void)
}

class NetworkService : NetworkServiceProtocol
{
    func fetchData(completion: @escaping(Result<ProductResponse, NetworkErrors>) -> Void) {
        dataRequest(RequestType.product, completion: completion)
    }
    
    func dataRequest<T:Decodable>(_ requestType: RequestType, completion: @escaping(Result<T,NetworkErrors>)->Void) {
        
        guard let request = requestType.createURLRequest() else {
            completion(.failure(.failed))
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let _ = error {
                completion(.failure(.failed))
            }
            
            guard let data = data else {
                completion(.failure(.badRequest))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(T.self, from: data)
                completion(.success(response))
            } catch let decodingError{
                print(decodingError.localizedDescription)
                completion(.failure(.unableToDecode))
            }
        }.resume()
    }
}
