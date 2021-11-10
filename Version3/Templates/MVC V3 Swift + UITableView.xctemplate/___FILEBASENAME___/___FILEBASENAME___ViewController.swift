//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

// MARK: - ___VARIABLE_moduleName___ViewController

class ___VARIABLE_moduleName___ViewController: UIViewController, UITableViewDelegate {

    var model: ___VARIABLE_moduleName___ModelProtocol
    private var dataSource: ___VARIABLE_moduleName___DataSource

    fileprivate var tempView: ___VARIABLE_moduleName___ViewProtocol?
    var customView: ___VARIABLE_moduleName___ViewProtocol! {
        return self.view as? ___VARIABLE_moduleName___ViewProtocol
    }

    // MARK: - Initializers

    init(withView view: ___VARIABLE_moduleName___ViewProtocol, model: ___VARIABLE_moduleName___ModelProtocol, dataSource: ___VARIABLE_moduleName___DataSource) {

        self.model = model
        self.dataSource = dataSource
        self.tempView = view

        super.init(nibName: nil, bundle: nil)

        self.model.delegate = self
        self.dataSource.cellDelegate = self

        // your custom code
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
