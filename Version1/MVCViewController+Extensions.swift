//
//  MVCViewController+Extensions.swift
//  MVC Template
//
//  Created by Igor Markov on 7/6/18.
//  Copyright © 2018 Igor Markov. All rights reserved.
//

import UIKit

extension UIView {

    class func create<T>() -> T {

        let viewNibName = String(describing: self)
        let nibContent = Bundle(for: self).loadNibNamed(viewNibName, owner: nil, options: nil)
        guard let view = nibContent?.first, type(of:view) == self else {
            fatalError("Nib \(viewNibName) does not contain \(viewNibName) View as first object")
        }

        return view as! T
    }

}

extension UITableViewCell {

    class func register(for tableView: UITableView) {

        let reuseId =  String(describing: self)
        let cellNib = UINib(nibName: reuseId, bundle: Bundle(for: self))
        tableView.register(cellNib, forCellReuseIdentifier: reuseId)
    }

    class func deque(from tableView:UITableView) -> UITableViewCell {
        let reuseId =  String(describing:self)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseId), type(of: cell) == self else {
            fatalError()
        }
        return cell
    }
}

extension UITableView {

    func deque<T>(for indexPath: IndexPath) -> T {
        let reuseId = String(describing: T.self)
        guard let cell = dequeueReusableCell(withIdentifier: reuseId, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(reuseId)")
        }

        return cell
    }
}
