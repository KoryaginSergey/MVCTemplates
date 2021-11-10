//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

// MARK: - ___VARIABLE_moduleName___DataSource

class ___VARIABLE_moduleName___DataSource: NSObject, UITableViewDataSource {

    weak var cellDelegate: ___VARIABLE_moduleName___CellDelegate?
    private let model: ___VARIABLE_moduleName___ModelProtocol

    init(withModel model: ___VARIABLE_moduleName___ModelProtocol) {
        self.model = model
    }

    func registerNibsForTableView(tableView: UITableView) {
        ___VARIABLE_moduleName___TableViewCell.register(for:tableView)
    }

    // MARK: - Private methods

    func configure(cell: ___VARIABLE_moduleName___TableViewCell, forItem item: String) {
        cell.titleLabel.text = item
    }

    // MARK: - UITableViewDataSource

    internal func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.deque(for: indexPath) as ___VARIABLE_moduleName___TableViewCell
        cell.delegate = cellDelegate

        let testItem = self.model.items[indexPath.row];
        self.configure(cell: cell, forItem: testItem)

        return cell
    }
}

