//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

typealias ___VARIABLE_moduleName___ViewControllerType = MVCViewController<___VARIABLE_moduleName___ModelProtocol, ___VARIABLE_moduleName___ViewProtocol, ___VARIABLE_moduleName___Router>

class ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewControllerType {
    
    // MARK: Initializers
    
    required init(withView view: ___VARIABLE_moduleName___ViewProtocol!, model: ___VARIABLE_moduleName___ModelProtocol!, router: ___VARIABLE_moduleName___Router?) {
        super.init(withView: view, model: model, router: router)
    }
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.delegate = self
        model.delegate = self
    }
}

// MARK: - ___VARIABLE_moduleName___ViewDelegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewDelegate {

    func viewSomeAction(view: ___VARIABLE_moduleName___ViewProtocol) {
    }
}

// MARK: - ___VARIABLE_moduleName___ModelDelegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ModelDelegate {
}
