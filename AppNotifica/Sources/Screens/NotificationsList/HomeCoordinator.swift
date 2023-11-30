//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class HomeCoordinator : CoordinatorProtocol {
    var navigation: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(named: "home")
        return viewController
    }()
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    func start() {
        self.navigation.pushViewController(homeViewController, animated: true)
    }
}
