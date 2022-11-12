//
//  TabBarController.swift
//  WorkOutApp
//
//  Created by Jorgen Shiller on 16.10.2022.
//

import UIKit

enum Tabs: Int {
    case overwiev
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inActive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(
            title: Resources.String.Tabbar.overview,
            image: UIImage(systemName: "homekit"),
            tag: Tabs.overwiev.rawValue
        )
        sessionNavigation.tabBarItem = UITabBarItem(
            title: Resources.String.Tabbar.session,
            image: UIImage(systemName: "alarm"),
            tag: Tabs.session.rawValue
        )
        progressNavigation.tabBarItem = UITabBarItem(
            title: Resources.String.Tabbar.progress,
            image: UIImage(systemName: "align.vertical.bottom"),
            tag: Tabs.progress.rawValue
        )
        settingsNavigation.tabBarItem = UITabBarItem(
            title: Resources.String.Tabbar.settings,
            image: UIImage(systemName: "gear"),
            tag: Tabs.settings.rawValue
        )
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: true)
    }
}
