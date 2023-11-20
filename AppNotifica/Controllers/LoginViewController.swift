//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 12/11/23.
//

import UIKit

class LoginViewController: UIViewController {
    public var onRegisterTap: (() -> Void)?
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        view.onRegisterTap = self.onRegisterTap
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Login"
    }
    

    
}
