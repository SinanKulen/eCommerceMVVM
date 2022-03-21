//
//  ProductListContracts.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 16.03.2022.
//

import Foundation

protocol ProductListViewModelProtocol {
    var delegate : ProductListViewModelDelegate? { get set }
    var productList: ProductResponse { get set }
    func loadData()
    func getSearchWithKeyword(_ keyword: String, _ completion: @escaping () -> Void)
    func clearData()
    func refreshData()
}

enum ProductListViewModelOutput: Equatable {
    case setLoading(Bool)
    case error(NetworkErrors)
    case showProductList
}

protocol ProductListViewModelDelegate : AnyObject {
    func handleViewModelOutput(_ output: ProductListViewModelOutput)
}
