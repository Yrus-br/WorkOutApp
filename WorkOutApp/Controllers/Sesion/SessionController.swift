//
//  SessionController.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 25.10.2022.
//

import UIKit

class SessionController: BaseController {
    
    private let timerView: BaseInfoView = {
        let view = BaseInfoView(with: "Session")
        return view
    }()
}

extension SessionController {
    
    func setupViews() {
        view.addSubview(timerView)
        addNavBarButton(at: .left, title: "Export")
        addNavBarButton(at: .right, title: "Details")
    }
    
    func constraintViews() {
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])

    }
    
    func configureAppereance() {
        
    }
}

