//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 20/11/23.
//

import UIKit

class RegisterViewController: UIViewController {
    var registerView = RegisterView()
    
    override func loadView() {
        self.view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Registrar"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
