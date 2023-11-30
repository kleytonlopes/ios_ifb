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
        let notificationsListCoordinator = NotificationsListCoordinator(navigation: navigation)
        let aboutUsCoordinator = AboutUsCoordinator(navigation: navigation)
        let addNotificationCoordinator = AddNotificationCoordinator(navigation: navigation)

        viewController.setViewControllers(
            [   notificationsListCoordinator.listViewController,
                aboutUsCoordinator.aboutUsViewController,
                addNotificationCoordinator.viewController
            ],
            animated: true
        )
        
        self.navigation.present(tabBarviewController, animated: true)
    }
}
