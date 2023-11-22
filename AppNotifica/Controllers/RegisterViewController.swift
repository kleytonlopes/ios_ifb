//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 20/11/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var onLoginTap: (() -> Void)?
    
    lazy var registerView: RegisterView = {
       let view = RegisterView()
        view.onLoginTap = {
            self.onLoginTap?()
        }
       return view
    }()
    
    override func loadView() {
        self.view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.title = "Registrar"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
