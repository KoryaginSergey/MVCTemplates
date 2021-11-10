//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

typealias ___VARIABLE_moduleName___ViewControllerType = MVCViewController<___VARIABLE_moduleName___ModelProtocol, ___VARIABLE_moduleName___ViewProtocol, ___VARIABLE_moduleName___Router>

class ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewControllerType, UITableViewDelegate {

    private var dataSource: ___VARIABLE_moduleName___DataSource!

    // MARK: - Initializers

    convenience init(withView view: ___VARIABLE_moduleName___ViewProtocol, model: ___VARIABLE_moduleName___ModelProtocol, router: ___VARIABLE_moduleName___Router, dataSource: ___VARIABLE_moduleName___DataSource) {

        self.init(withView: view, model: model, router: router)

        self.model.delegate = self

        self.dataSource = dataSource
        self.dataSource.cellDelegate = self

        // your custom code
    }

    required init(withView view: ___VARIABLE_moduleName___ViewProtocol!, model: ___VARIABLE_moduleName___ModelProtocol!, router: ___VARIABLE_moduleName___Router?) {
        super.init(withView: view, model: model, router: router)
    }

    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.customView.delegate = self
        self.connectTableViewDependencies()
    }

    private func connectTableViewDependencies() {

        self.customView.tableView.delegate = self
        self.dataSource.registerNibsForTableView(tableView: self.customView.tableView)
        self.customView.tableView.dataSource = self.dataSource
    }

    // MARK: - Table view delegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)

        self.router?.navigateToSomeScreen(from: self, withBackgroundColor: UIColor.gray)
    }
}

// MARK: - ___VARIABLE_moduleName___ViewDelegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewDelegate {

    func viewSomeAction(view: ___VARIABLE_moduleName___ViewProtocol) {
    }
}

// MARK: - ___VARIABLE_moduleName___ModelDelegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ModelDelegate {

    func modelDidChanged(model: ___VARIABLE_moduleName___ModelProtocol) {
    }
}

// MARK: - ___VARIABLE_moduleName___CellDelegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___CellDelegate {

    func cellDidTapSomeButton(cell: ___VARIABLE_moduleName___TableViewCell) {
    }
}
