//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___VARIABLE_moduleName___Builder: NSObject {

    class func viewController() -> ___VARIABLE_moduleName___ViewController {

        let view: ___VARIABLE_moduleName___ViewProtocol = ___VARIABLE_moduleName___View.create() as  ___VARIABLE_moduleName___ViewProtocol
        let model: ___VARIABLE_moduleName___ModelProtocol = ___VARIABLE_moduleName___Model()

        let viewController = ___VARIABLE_moduleName___ViewController(withView: view, model: model)
        return viewController
    }

}

