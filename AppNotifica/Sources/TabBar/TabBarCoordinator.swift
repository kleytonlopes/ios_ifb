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
        let tabBarviewController = TabBarController()
        let notificationsListCoordinator = NotificationsListCoordinator()
        let aboutUsCoordinator = AboutUsCoordinator()
        let addNotificationCoordinator = AddNotificationCoordinator()

        tabBarviewController.setViewControllers(
            [   notificationsListCoordinator.navigation,
                aboutUsCoordinator.navigation,
                addNotificationCoordinator.navigation
            ],
            animated: true
        )
        
        self.navigation.present(tabBarviewController, animated: true)
    }
}
