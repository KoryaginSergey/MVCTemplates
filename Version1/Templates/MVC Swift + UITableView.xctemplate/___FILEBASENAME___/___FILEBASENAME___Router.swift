//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___VARIABLE_moduleName___Router: NSObject {

    // Navigation example method
    func navigateToSomeScreen(from vc: UIViewController, withBackgroundColor backgroundColor: UIColor) {
        // Create new screen. Here you should use another Builder to create it.
        let someScreenVC = UIViewController()
        // Set passed parameters
        someScreenVC.view.backgroundColor = backgroundColor

        if UI_USER_INTERFACE_IDIOM() == .pad {
            someScreenVC.modalPresentationStyle = .pageSheet
            someScreenVC.modalTransitionStyle = .crossDissolve

            vc.navigationController?.present(someScreenVC, animated: true, completion: nil)
        } else {
            vc.navigationController?.pushViewController(someScreenVC, animated: true)
        }
    }
}
