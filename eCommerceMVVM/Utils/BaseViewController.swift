//
//  BaseViewController.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 16.03.2022.
//

import UIKit

class BaseViewController: UIViewController {

    let activityIndicator = UIActivityIndicatorView()
    let refreshController = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureActivityIndicator()
    }
    
    func setActivityIndıcatorAnimation(with loading: Bool) {
        if loading {
            self.activityIndicator.startAnimating()
        }
        else {
            self.activityIndicator.stopAnimating()
        }
    }
    
    private func configureActivityIndicator() {
        view.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        activityIndicator.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        activityIndicator.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        activityIndicator.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

}
