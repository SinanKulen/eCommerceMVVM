//
//  NetworkSettings.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 16.03.2022.
//

import Foundation

enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
}

protocol NetworkSetting {
    var httpMethodGet : HttpMethod { get }
    var httpMethodPost : HttpMethod { get }
    var scheme : String { get }
    var host : String { get }
    var path : String { get }
}

extension NetworkSetting {
    var httpMethodGet : HttpMethod {
        return .get
    }
    
    var httpMethodPost : HttpMethod {
        return .post
    }
    
    var scheme : String {
        return "https"
    }
    
    var host : String {
        return "fakestoreapi.com"
    }
        
    func createURLRequest() -> URLRequest? {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        
        if let url = components.url {
            var request = URLRequest(url: url)
            request.httpMethod = httpMethodGet.rawValue
            return request
        }
        else {
            return nil
        }
    }
}
