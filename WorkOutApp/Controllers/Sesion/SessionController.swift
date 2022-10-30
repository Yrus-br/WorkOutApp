//
//  SessionController.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 25.10.2022.
//

import UIKit

class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "High Intensity Cardio"
        navigationController?.navigationItem.title = Resources.String.Tabbar.session
        
        addNavBarButton(at: .left, title: "Pause")
        addNavBarButton(at: .right, title: "Finish")
    }
}
