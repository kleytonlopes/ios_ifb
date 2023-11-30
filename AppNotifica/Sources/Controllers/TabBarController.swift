//
//  TabBarViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class TabBarController: UITabBarController{
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        self.tabBar.tintColor = .mainColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackgroundColor
    }
    
}
