//
//  AddNotificationCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AddNotificationCoordinator : Coordinator {
    var navigation: UINavigationController
    
    lazy var viewController: AddNotificationViewController = {
        let viewController = AddNotificationViewController()
        viewController.tabBarItem.title = "Adicionar"
        viewController.tabBarItem.image = UIImage(named: "add-icon")
        return viewController
    }()
    
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    func start() {
        let viewController = AddNotificationViewController()
        self.navigation.pushViewController(viewController, animated: true)
    }
}
