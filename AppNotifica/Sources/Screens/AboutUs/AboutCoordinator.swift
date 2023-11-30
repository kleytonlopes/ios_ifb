//
//  AboutViewControllerCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AboutCoordinator : CoordinatorProtocol {
    var navigation: UINavigationController
    
    lazy var aboutViewController: AboutViewController = {
        let viewController = AboutViewController()
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(named: "about-icon")
        return viewController
    }()
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    func start() {
      
    }
}
