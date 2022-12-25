//
//  WAButton.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 25.12.2022.
//

import UIKit

public enum WAButtonType {
    case primary
    case secondary
}

final class WAButton: UIButton {

    private var type: WAButtonType = .primary

    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()

    private let iconView: UIImageView = {
        let view = UIImageView()
        view.image = Resources.Images.ButtonImages.downArrow
        return view
    }()

    init(with type: WAButtonType) {
        super.init(frame: .zero)
        self.type = type

        setupViews()
        constaintViews()
        configureAppearance()
    }

    required init?(coder: NSCoder) {
        super.init(frame: .zero)

        setupViews()
        constaintViews()
        configureAppearance()
    }

    func setTitle(_ title: String?) {
        label.text = title
    }
}

private extension WAButton {

    func setupViews() {
        setupView(label)
        setupView(iconView)
    }

    func constaintViews() {
        var horisontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }

        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horisontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),

            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horisontalOffset * 2)
        ])
    }

    func configureAppearance() {
        switch type {
        case .primary:
            label.textColor = Resources.Colors.inActive
            label.font = Resources.Fonts.helveticaRegular(with: 13)
            iconView.tintColor = Resources.Colors.inActive

        case .secondary:
            backgroundColor = Resources.Colors.secondary
            layer.cornerRadius = 14
            label.textColor = Resources.Colors.active
            label.font = Resources.Fonts.helveticaRegular(with: 15)
            iconView.tintColor = Resources.Colors.active
        }

        makeSystem(self)
    }
}

