//
//  DataResponse.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 16.03.2022.
//

import Foundation

struct ProductDataModal: Codable, Equatable {
    let id: Int
    let title: String
    let price: Double
    let dataResponseDescription: String
    let category: Category
    let image: String
    let rating: Rating

    enum CodingKeys: String, CodingKey {
        case id, title, price
        case dataResponseDescription = "description"
        case category, image, rating
    }
}

enum Category: String, Codable, Equatable {
    case electronics = "electronics"
    case jewelery = "jewelery"
    case menSClothing = "men's clothing"
    case womenSClothing = "women's clothing"
}

struct Rating: Codable, Equatable {
    let rate: Double
    let count: Int
}

