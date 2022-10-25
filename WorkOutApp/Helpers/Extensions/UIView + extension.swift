//
//  UIView + extension.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 25.10.2022.
//

import UIKit

extension UIView {
    func addButtonBorder(with color: UIColor, and heigth: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(
            x: 0,
            y: frame.height - heigth,
            width: frame.width,
            height: heigth)
        addSubview(separator)
    }
}
