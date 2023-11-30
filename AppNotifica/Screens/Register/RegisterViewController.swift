//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 20/11/23.
//

import UIKit

class RegisterViewController: ViewControllerDefault {
    
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
        self.title = "Registrar"
    }
}
