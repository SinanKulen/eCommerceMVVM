//
//  ProductViewModel.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 16.03.2022.
//

import Foundation

final class ProductListViewModel: ProductListViewModelProtocol {

    weak var delegate : ProductListViewModelDelegate?
    private let service : NetworkServiceProtocol
    var productList: [ProductListPresentation] = []
    init(service : NetworkServiceProtocol) {
        self.service = service
    }
    
    func loadData() {
        delegate?.handleViewModelOutput(.setLoading(true))
        
        service.fetchData {[weak self] (result) in
            guard let self = self else { return }
            self.delegate?.handleViewModelOutput(.setLoading(false))
            
            switch result {
            case .success(let response):
                self.productList = response
                self.productList.append(i)
                self.delegate?.handleViewModelOutput(.showProductList)
            case .failure(let error):
                self.delegate?.handleViewModelOutput(.error(error))
            }
        }
    }
    
    func refreshData() {
        productList.removeAll()
        loadData()
    }
}
