//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//


import UIKit

class TabBarCoordinator : CoordinatorProtocol {
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    func start() {
        let viewController = TabBarController()
        let homeCoordinator = HomeCoordinator(navigation: navigation)
        let aboutCoordinator = AboutCoordinator(navigation: navigation)
        let addNotificationCoordinator = AddNotificationCoordinator(navigation: navigation)

        viewController.setViewControllers(
            [   homeCoordinator.homeViewController,
                aboutCoordinator.aboutViewController,
                addNotificationCoordinator.viewController
            ],
            animated: true
        )
        
        self.navigation.pushViewController(viewController, animated: true)
    }
}
