//
//  BaseController.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 24.10.2022.
//

import UIKit


class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    
}

@objc extension BaseController {
    
    func addViews() {}
    func layoutViews() {}
    func configure() {
        view.backgroundColor = Resources.Colors.background
    }
}