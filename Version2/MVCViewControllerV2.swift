//
//  MVCViewControllerV2.swift
//  MVC Template Version 2
//
//  Created by Igor Markov on 7/6/18.
//  Copyright © 2018 DB Best Technologies LLC. All rights reserved.
//

import UIKit

// MARK: - MVCViewControllerV2

class MVCViewControllerV2<ModelType, ViewType>: UIViewController {

    var model: ModelType!
    var customView: ViewType! {
        return self.view as! ViewType
    }

    fileprivate var tempView: ViewType?

    // MARK: - Initializers

    required init(withView view: ViewType!, model: ModelType!) {
        self.model = model
        self.tempView = view

        super.init(nibName: nil, bundle: nil)
    }

    convenience override init(nibName: String?, bundle: Bundle?) {
        fatalError("This class needs to be initialized with init(withView:model:router) method")
    }

    required convenience init?(coder aDecoder: NSCoder) {
        fatalError("This class needs to be initialized with init(withView:model:router) method")
    }

    // MARK: - Overrided methods

    override func loadView() {
        super.loadView()

        guard let view = self.tempView as? UIView else {
            fatalError("tempView must be UIView instance")
        }

        self.view = view
        self.tempView = nil
    }
}
