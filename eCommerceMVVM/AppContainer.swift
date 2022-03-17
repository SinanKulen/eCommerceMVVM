//
//  AppContainer.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 17.03.2022.
//

import Foundation

let appContainer = AppContainer()

final class AppContainer {
    let service : NetworkServiceProtocol = NetworkService()
    let router = AppRouter()
}
