//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___ViewDelegate: NSObjectProtocol {
    
    func viewSomeAction(view: ___VARIABLE_moduleName___ViewProtocol)
}

protocol ___VARIABLE_moduleName___ViewProtocol: NSObjectProtocol {
    
    var delegate: ___VARIABLE_moduleName___ViewDelegate? { get set }
}

class ___VARIABLE_moduleName___View: UIView, ___VARIABLE_moduleName___ViewProtocol{
    
    // MARK: - ___VARIABLE_moduleName___View interface methods

    weak var delegate: ___VARIABLE_moduleName___ViewDelegate?
    
    // MARK: - Overrided methods

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - IBActions
    
    func someButtonAction() {

        self.delegate?.viewSomeAction(view: self)
    }
}
