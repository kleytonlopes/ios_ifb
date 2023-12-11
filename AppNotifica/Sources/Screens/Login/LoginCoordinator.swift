//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 12/11/23.
//

import UIKit

class LoginCoordinator : CoordinatorProtocol {
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    func start() {
        let viewModel = LoginViewModel()
        let loginViewController = LoginViewController(viewModel: viewModel)
        loginViewController.onRegisterTap = {
            self.goToRegisterTap()
        }
        loginViewController.onLoginSuccess = { user in
            self.goToLoginTap(user: user)
        }
        self.navigation.pushViewController(loginViewController, animated: true)
    }
    
    private func goToRegisterTap() {
        let coordinator = RegisterCoordinator(navigation: navigation)
        coordinator.start()
    }
    
    private func goToLoginTap(user: User) {
        //TODO: user must be utilized
        let coordinator = TabBarCoordinator(navigation: navigation)
        coordinator.start()
    }
}
