//
//  Resources.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 16.10.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")
        static var titleGray = UIColor(hexString: "#545C77")
        static var separator = UIColor(hexString: "#EBECEF")
        static var background = UIColor(hexString: "#F8F9F9")
        static var secondary = UIColor(hexString: "F0F3FF ")
    }
    
    enum String {
        enum Tabbar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
        
    }
    
    enum Images {
        enum Tabbar {
            static var overview = UIImage(named: "40031")
            static var session = UIImage(named: "40031")
            static var progress = UIImage(named: "40031")
            static var settings = UIImage(named: "40031")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
