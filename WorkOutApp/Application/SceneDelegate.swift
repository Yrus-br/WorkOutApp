//
//  SceneDelegate.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 16.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
         
        let tabBarController = TabBarController()
        
        guard let winwodScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: winwodScene.coordinateSpace.bounds)
        window?.windowScene = winwodScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}

