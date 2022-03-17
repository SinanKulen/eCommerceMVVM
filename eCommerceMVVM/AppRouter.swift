//
//  AppRouter.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 17.03.2022.
//

import Foundation
import UIKit

class AppRouter {
    func start(scene: UIWindowScene) -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
      //  let viewController = ProductListViewController()
        let productVC = ProductListSceneBuilder.build(viewModel: ProductListViewModel.init(service: appContainer.service))
        let productNC = UINavigationController(rootViewController: productVC)
        window.rootViewController = productNC
        window.makeKeyAndVisible()
        window.windowScene = scene
        return window
    }
}
