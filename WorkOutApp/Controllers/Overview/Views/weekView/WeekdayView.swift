//
//  WeekdayView.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 01.11.2022.
//

import UIKit

extension WeekView {
    final class WeekdayView: BaseView {
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            nameLabel.text = name
            dateLabel.text = "\(index)"
        }
    }
}

extension WeekView.WeekdayView {
    override func addViews() {
        super.addViews()
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resources.Fonts.helveticaRegular(with: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resources.Fonts.helveticaRegular(with: 15)
        nameLabel.textAlignment = .center

        
        stackView.spacing = 3
        stackView.axis = .vertical 
    }
}


