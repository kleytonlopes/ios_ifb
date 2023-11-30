//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 12/11/23.
//

import UIKit

class LoginViewController: ViewControllerDefault {
    public var onRegisterTap: (() -> Void)?
    public var onLoginTap: (() -> Void)?
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        view.onRegisterTap = self.onRegisterTap
        view.onLoginTap = self.onLoginTap
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
    }
    
}
