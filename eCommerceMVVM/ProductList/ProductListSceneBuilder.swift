//
//  File.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 17.03.2022.
//

import Foundation
import UIKit

final class ProductListSceneBuilder {
    static func build(viewModel: ProductListViewModel) -> ProductListViewController {
        let storyboard = UIStoryboard(name: "ProductList", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "ProductListViewController") as? ProductListViewController else {
            return ProductListViewController()
        }
        viewController.viewModel = ProductListViewModel(service: appContainer.service)
        return viewController
    }
}
