//
//  UIViewController+ .swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 16.03.2022.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(with title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let doneAction = UIAlertAction(title: "Done", style: .default, handler: nil)
        alert.addAction(doneAction)
        present(alert, animated: true, completion: nil)
        
    }
}
