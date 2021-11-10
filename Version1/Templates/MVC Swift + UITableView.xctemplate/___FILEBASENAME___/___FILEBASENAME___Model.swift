//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___ModelDelegate: NSObjectProtocol {

    func modelDidChanged(model: ___VARIABLE_moduleName___ModelProtocol)
}

protocol ___VARIABLE_moduleName___ModelProtocol: NSObjectProtocol {

    var delegate: ___VARIABLE_moduleName___ModelDelegate? { get set }
    var items: [String] { get }
}

class ___VARIABLE_moduleName___Model: NSObject, ___VARIABLE_moduleName___ModelProtocol {

    override init() {
        self.items = []
        super.init()

        self.items = self.getTestItems()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func getTestItems() -> [String] {
        return ["Item 0", "Item 1", "Item 2"]
    }

    // MARK: - ___VARIABLE_moduleName___Model methods

    weak var delegate: ___VARIABLE_moduleName___ModelDelegate?
    private(set) var items: [String]

    /** Implement ___VARIABLE_moduleName___Model methods here */


    // MARK: - Private methods

    /** Implement private methods here */

}
