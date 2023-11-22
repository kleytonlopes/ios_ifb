//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class HomeCoordinator : Coordinator {
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    func start() {
        let homeViewController = HomeViewController()
        self.navigation.pushViewController(homeViewController, animated: true)
    }
}
