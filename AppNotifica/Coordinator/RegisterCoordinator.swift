//
//  RegisterCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 20/11/23.
//

import UIKit

class RegisterCoordinator : Coordinator {
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    func start() {
        let registerViewController = RegisterViewController()
        registerViewController.onLoginTap = {
            self.goToLogin()
        }
        self.navigation.pushViewController(registerViewController, animated: true)
    }
    
    private func goToLogin(){
        self.navigation.popViewController(animated: true)
    }
}

