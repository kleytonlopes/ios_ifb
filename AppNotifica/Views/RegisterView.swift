//
//  RegisterView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 20/11/23.
//

import UIKit

class RegisterView: UIView {
    
    private lazy var labelHelp = LabelDefault(text: "Entre com seu e-mail e senha para se registrar.", fontSize: 20)
    
    private lazy var textFieldUsername = TextFieldDefault(
        placeholder: "Email",
        keyboardType: .emailAddress,
        returnType: .next
    )
    
    private lazy var textFieldPassword = TextFieldDefault(
        placeholder: "Senha",
        returnType: .next,
        isSecurityEntry: true
    )
    
    private lazy var textFieldConfirmPassword = TextFieldDefault(
        placeholder: "Confirme sua senha",
        returnType: .done,
        isSecurityEntry: true
    )
    
    private lazy var buttonLogin = ButtonDefault(title: "LOGAR")
    
    private lazy var buttonRegister = ButtonDefault(title: "REGISTRAR")
    
    var onLoginTap: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func loginTap(){
        onLoginTap?()
    }

}

extension RegisterView: ViewCode {
    func setupHierarchy() {
        self.addSubview(labelHelp)
        self.addSubview(textFieldUsername)
        self.addSubview(textFieldPassword)
        self.addSubview(textFieldConfirmPassword)
        self.addSubview(buttonLogin)
        self.addSubview(buttonRegister)
        
        self.buttonLogin.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
    }
    
    func setupConstraints() {
        labelHelp.getAutolayout()
            .sameTopAnchorAsSuperview(20)
            .alignToSuperview(10)
            .activateConstraints()
        textFieldUsername.getAutolayout()
            .below(view: labelHelp, 40)
            .alignToSuperview(20)
            .withHeight(60)
            .activateConstraints()
        textFieldPassword.getAutolayout()
            .below(view: textFieldUsername,20)
            .align(to: textFieldUsername)
            .withHeight(60)
            .activateConstraints()
        textFieldConfirmPassword.getAutolayout()
            .below(view: textFieldPassword, 20)
            .align(to: textFieldUsername)
            .withHeight(60)
            .activateConstraints()
        buttonLogin.getAutolayout()
            .below(view: textFieldConfirmPassword, 30)
            .alignToSuperview(20)
            .withHeight(60)
            .activateConstraints()
        buttonRegister.getAutolayout()
            .below(view: buttonLogin, 20)
            .alignToSuperview(20)
            .withHeight(60)
            .activateConstraints()
        
    }
    
    func setupStyle() {
        self.backgroundColor = .viewBackgroundColor

    }
    
}
