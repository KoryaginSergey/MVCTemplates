//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___VARIABLE_moduleName___TableViewCell: UITableViewCell {

    weak var delegate: ___VARIABLE_moduleName___CellDelegate?
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - IBAction

    @IBAction func someButtonAction() {
        self.delegate?.cellDidTapSomeButton(cell: self)
    }
}


protocol ___VARIABLE_moduleName___CellDelegate: NSObjectProtocol {

    /** Delegate method example */
    func cellDidTapSomeButton(cell: ___VARIABLE_moduleName___TableViewCell)
}
