//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

// MARK: - ___VARIABLE_moduleName___ModelDelegate

protocol ___VARIABLE_moduleName___ModelDelegate: class {

    func modelDidChanged(model: ___VARIABLE_moduleName___ModelProtocol)
}

// MARK: - ___VARIABLE_moduleName___ModelProtocol

protocol ___VARIABLE_moduleName___ModelProtocol: class {

    var delegate: ___VARIABLE_moduleName___ModelDelegate? { get set }
    var items: [String] { get }
}

// MARK: - ___VARIABLE_moduleName___Model

class ___VARIABLE_moduleName___Model: ___VARIABLE_moduleName___ModelProtocol {

    init() {
        self.items = self.getTestItems()
    }

    func getTestItems() -> [String] {
        return ["Item 0", "Item 1", "Item 2"]
    }

    // MARK: - ___VARIABLE_moduleName___Model methods

    weak var delegate: ___VARIABLE_moduleName___ModelDelegate?
    private(set) var items: [String] = []

    /** Implement ___VARIABLE_moduleName___Model methods here */


    // MARK: - Private methods

    /** Implement private methods here */

}

