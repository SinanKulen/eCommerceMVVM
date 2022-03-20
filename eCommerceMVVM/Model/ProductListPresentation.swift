////
////  ProductPresentation.swift
////  eCommerceMVVM
////
////  Created by Sinan Kulen on 17.03.2022.
////
//
//import Foundation
//
//typealias ProductListPresentationArray = [ProductListPresentation]
//
//final class ProductListPresentation: NSObject {
////    let id: Int
////    let title: String
////    let price: Double
////    let description: String
////    let category: String
////    let image: String
////   // let rating: Rating
////    let rate: Double
////    let count: Int
////
////    init(productList: ProductDataModal) {
////        self.id = productList.id
////        self.title = productList.title
////        self.price = productList.price
////        self.description = productList.description
////        self.category = productList.category
////        self.image = productList.image
////        self.rate = productList.rating.rate
////        self.count = productList.rating.count
////    }
////
////
////    static func == (lhs: ProductListPresentation, rhs: ProductListPresentation)-> Bool {
////        return lhs.id == rhs.id && lhs.title == rhs.title && lhs.price == rhs.price && lhs.description == rhs.description && lhs.category == rhs.category && lhs.image == rhs.image && lhs.rate == rhs.rate && lhs.count == rhs.count
////    }
//
//        let id: Int
//        let title: String
//        let price: Double
//        let responseDescription: String
//        let category: Ca
//        let image: String
//        let rate: Double
//        let count: Int
//
//    init(id: Int, title: String, price: Double, responseDescription: String, category: String, image: String, rate: Double, count: Int) {
//            self.id = id
//            self.title = title
//            self.price = price
//            self.responseDescription = responseDescription
//            self.category = category
//            self.image = image
//            self.rate = rate
//            self.count = count
//            super.init()
//        }
//
//        override func isEqual(_ object: Any?) -> Bool {
//            guard let other = object as? ProductListPresentation else { return false }
//            return self.id == other.id && self.title == other.title && self.price == other.price && self.responseDescription == other.responseDescription && self.category == other.category && self.image == other.image && self.rate == other.rate && self.count == other.count
//        }
//}
//
//extension ProductListPresentation {
//    convenience init(productList: ProductDataModal) {
//        self.init(id: productList.id, title: productList.title, price: productList.price, responseDescription: productList.description, category: productList.category, image: productList.image, rate: productList.rating.rate, count: productList.rating.count)
//    }
//}
//
//
