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
        
        static var separator = UIColor(hexString: "#EBECEF")
    }
    
    enum String {
        enum Tabbar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Srogress"
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
}
