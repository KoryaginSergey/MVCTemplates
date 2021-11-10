//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

// MARK: - ___VARIABLE_moduleName___ViewController

class ___VARIABLE_moduleName___ViewController: UIViewController {

    var model: ___VARIABLE_moduleName___ModelProtocol

    fileprivate var tempView: ___VARIABLE_moduleName___ViewProtocol?
    var customView: ___VARIABLE_moduleName___ViewProtocol! {
        return self.view as? ___VARIABLE_moduleName___ViewProtocol
    }

    // MARK: Initializers

    init(withView view: ___VARIABLE_moduleName___ViewProtocol, model: ___VARIABLE_moduleName___ModelProtocol) {
        self.model = model
        self.tempView = view

        super.init(nibName: nil, bundle: nil)
    }

    required convenience init?(coder aDecoder: NSCoder) {
        fatalError("This class needs to be initialized with init(withView:model:) method")
    }

    // MARK: - View life cycle

    override func loadView() {
        super.loadView()

        self.view = self.tempView
        self.tempView = nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        customView.delegate = self
        model.delegate = self
    }

    // MARK: - Private methods

}

// MARK: - ___VARIABLE_moduleName___ViewDelegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewDelegate {

    func viewSomeAction(view: ___VARIABLE_moduleName___ViewProtocol) {
    }
}

// MARK: - ___VARIABLE_moduleName___ModelDelegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ModelDelegate {

}
