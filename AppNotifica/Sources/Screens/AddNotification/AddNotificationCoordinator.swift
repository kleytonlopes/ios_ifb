//
//  AddNotificationCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AddNotificationCoordinator : CoordinatorProtocol {
    var navigation: UINavigationController
    
    private lazy var viewController: AddNotificationViewController = {
        let viewController = AddNotificationViewController()
        viewController.tabBarItem.title = "Adicionar"
        viewController.tabBarItem.image = UIImage(named: "add-icon")
        return viewController
    }()
    
    
    init(
        navigation: UINavigationController = UINavigationController()
    ) {
        self.navigation = navigation
        start()
    }
    func start() {
        self.navigation.pushViewController(viewController, animated: true)
    }
}
