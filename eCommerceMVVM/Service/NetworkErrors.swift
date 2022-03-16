//
//  NetworkErrors.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 16.03.2022.
//

import Foundation

enum NetworkErrors : String, Error {
    case success
    case authenticationError = "You need to be authenticated first"
    case badRequest = "Bad request"
    case outdated = "The url you requested is outdated"
    case failed = "Network Request failed"
    case noData = "Response returned with no data to decode"
    case unableToDecode = "We could not decode the response"
}
