//
//  ProductPresentation.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 17.03.2022.
//

import Foundation

final class ProductListPresentation: Equatable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
   // let rating: Rating
    let rate: Double
    let count: Int
    
//    class Rating: Equatable{
//
//        var rate: Double
//        var count: Int
//
//        init (productListRating: ProductDataModal) {
//            self.rate = productListRating.rating.rate
//            self.count = productListRating.rating.count
//        }
//
//        static func == (lhs: ProductListPresentation.Rating, rhs: ProductListPresentation.Rating) -> Bool {
//            lhs.rate == rhs.rate && lhs.count == rhs.count
//        }
//    }
    
    init(productList: ProductDataModal) {
        self.id = productList.id
        self.title = productList.title
        self.price = productList.price
        self.description = productList.description
        self.category = productList.category
        self.image = productList.image
        self.rate = productList.rating.rate
        self.count = productList.rating.count
    }
    
   
    static func == (lhs: ProductListPresentation, rhs: ProductListPresentation)-> Bool {
        return lhs.id == rhs.id && lhs.title == rhs.title && lhs.price == rhs.price && lhs.description == rhs.description && lhs.category == rhs.category && lhs.image == rhs.image && lhs.rate == rhs.rate && lhs.count == rhs.count
    }
}
