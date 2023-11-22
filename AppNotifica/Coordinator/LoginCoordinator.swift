//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 12/11/23.
//

import UIKit

class LoginCoordinator : Coordinator {
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    func start() {
        let loginViewController = LoginViewController()
        loginViewController.onRegisterTap = {
            self.goToRegisterTap()
        }
        loginViewController.onLoginTap = {
            self.goToLoginTap()
        }
        self.navigation.pushViewController(loginViewController, animated: true)
    }
    
    private func goToRegisterTap() {
        let coordinator = RegisterCoordinator(navigation: navigation)
        coordinator.start()
    }
    
    private func goToLoginTap() {
        let coordinator = HomeCoordinator(navigation: navigation)
        coordinator.start()
    }
}
