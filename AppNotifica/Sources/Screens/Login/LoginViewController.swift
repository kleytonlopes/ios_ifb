//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 12/11/23.
//

import UIKit

class LoginViewController: ViewControllerDefault {
    private var viewModel: LoginViewModel
    public var onRegisterTap: (() -> Void)?
    public var onLoginSuccess: ((_ user: User) -> Void)?
    
    private lazy var loginView: LoginView = {
        let view = LoginView()
        view.onRegisterTap = self.onRegisterTap
        view.onLoginTap = { [weak self] username, password in
            self?.viewModel.makeLogin(username: username,
                                      password: password)
        }
        return view
    }()
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        setupBindings()
    }
    
    override func loadView() {
        self.view = loginView
    }
    
    private func setupBindings(){
        viewModel.loginSuccess = { user in
            self.onLoginSuccess?(user)
        }
        viewModel.errorStateChanged = { message in
            self.showAlertMessage(title: "Error", message: message?.description ?? "Erro Inesperado!")
        }
    }
    
}
