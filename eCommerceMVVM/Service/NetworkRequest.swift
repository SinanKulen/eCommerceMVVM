//
//  NetworkRequest.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 16.03.2022.
//

import Foundation


enum RequestType {
    case product
}

extension RequestType : NetworkSetting {
    var path : String {
        switch self
        {
        case .product :
            return "/products"
        }
    }
}

