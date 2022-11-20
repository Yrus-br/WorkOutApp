//
//  BaseInfoView.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 21.11.2022.
//

import UIKit

class BaseInfoView: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helveticaRegular(with: 13)
        label.textColor = Resources.Colors.inActive
        label.text = "Hello".uppercased()
        return label
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = Resources.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
    init(with title: String? = nil, alignment: NSTextAlignment = .left) {
        super.init(frame: .zero)
        
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = alignment
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
}

extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        addView(titleLabel)
        addView(contentView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppereance() {
        super.configureAppereance()
        backgroundColor = .red
    }
}
