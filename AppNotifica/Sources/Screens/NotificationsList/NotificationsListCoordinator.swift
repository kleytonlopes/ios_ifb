//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class NotificationsListCoordinator : CoordinatorProtocol {
    var navigation: UINavigationController
    
    private lazy var listViewController: NotificationsListViewController = {
        let viewController = NotificationsListViewController()
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(named: "home")
        return viewController
    }()
    
    init(
        navigation: UINavigationController = UINavigationController()
    ){
        self.navigation = navigation
        start()
    }
    
    func start() {
        self.navigation.pushViewController(listViewController, animated: true)
    }
}
