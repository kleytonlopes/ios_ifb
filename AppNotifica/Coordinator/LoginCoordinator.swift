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
        self.navigation.pushViewController(loginViewController, animated: true)
    }
    
    private func goToRegisterTap() {
        self.navigation.pushViewController(RegisterViewController(), animated: true)
    }
}
