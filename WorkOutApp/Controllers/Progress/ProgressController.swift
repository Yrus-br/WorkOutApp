//
//  ProgressController.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 25.10.2022.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarButton(at: .left, title: "Export")
        addNavBarButton(at: .right, title: "Details")
    }
}
