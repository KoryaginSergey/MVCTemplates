//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

// MARK: - ___VARIABLE_moduleName___ViewDelegate

protocol ___VARIABLE_moduleName___ViewDelegate: class {

    func viewSomeAction(view: ___VARIABLE_moduleName___ViewProtocol)
}

// MARK: - ___VARIABLE_moduleName___ViewProtocol

protocol ___VARIABLE_moduleName___ViewProtocol: UIView {

    var delegate: ___VARIABLE_moduleName___ViewDelegate? { get set }
    var tableView: UITableView! { get }
}

// MARK: - ___VARIABLE_moduleName___View

class ___VARIABLE_moduleName___View: UIView, ___VARIABLE_moduleName___ViewProtocol{

    // MARK: - ___VARIABLE_moduleName___View interface methods

    weak var delegate: ___VARIABLE_moduleName___ViewDelegate?
    @IBOutlet weak var tableView: UITableView!

    // add view private properties/outlets/methods here

    // MARK: - IBActions

    @IBAction func someButtonAction() {
        self.delegate?.viewSomeAction(view: self)
    }

    // MARK: - Overrided methods

    override func awakeFromNib() {
        super.awakeFromNib()

        // setup view and table view programmatically here
    }
}

