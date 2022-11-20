//
//  BaseView.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 26.10.2022.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppereance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    func setupViews() {}
    func constraintViews() {}
    
    func configureAppereance() {
        backgroundColor = .white
    }
}
