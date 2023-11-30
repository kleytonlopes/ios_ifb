//
//  AboutViewControllerCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AboutUsCoordinator : CoordinatorProtocol {
    var navigation: UINavigationController
    
    private lazy var aboutUsViewController: AboutUsViewController = {
        let viewController = AboutUsViewController()
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(named: "about-icon")
        return viewController
    }()
    
    init(
        navigation: UINavigationController = UINavigationController()
    ){
        self.navigation = navigation
        start()
    }
    func start() {
        self.navigation.pushViewController(aboutUsViewController, animated: true)
    }
}
