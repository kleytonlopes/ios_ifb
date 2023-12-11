//
//  LoginView.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 12/11/23.
//

import UIKit

class LoginView: UIView {
    var onRegisterTap: (() -> Void)?
    var onLoginTap: ((_ username: String,_ password: String) -> Void)?
    
    private lazy var imageViewLogo = ImageViewDefault(imageName: "logo-login")
    
    private lazy var labelUnderImage = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF")
    
    private lazy var textFieldUsername = TextFieldDefault(
        placeholder: "Email",
        keyboardType: .emailAddress,
        returnType: .next
    )
    
    private lazy var textFieldPassword = TextFieldDefault(
        placeholder: "Senha",
        returnType: .done,
        isSecurityEntry: true
    )
    private lazy var buttonLogin = ButtonDefault(title: "LOGAR")
    
    private lazy var buttonRegister = ButtonDefault(title: "REGISTRAR")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func registerTap(){
        onRegisterTap?()
    }
    
    @objc private func loginTap(){
        onLoginTap?(
            self.textFieldUsername.text ?? "",
            self.textFieldPassword.text ?? ""
        )
    }
    
}

extension LoginView: ViewCodeProtocol{
    func setupHierarchy() {
        self.addSubview(imageViewLogo)
        self.addSubview(labelUnderImage)
        self.addSubview(textFieldUsername)
        self.addSubview(textFieldPassword)
        self.addSubview(buttonLogin)
        self.addSubview(buttonRegister)
        
        textFieldPassword.delegate = self
        textFieldUsername.delegate = self
        
        self.buttonRegister.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        self.buttonLogin.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
    }
    
    func setupConstraints() {
        imageViewLogo.getAutolayout()
            .sameTopAnchorAsSuperview(20)
            .centerXToSuperview()
            .withWidth(274.99)
            .withHeight(82)
            .activateConstraints()

        labelUnderImage.getAutolayout()
            .below(view: imageViewLogo, 3)
            .alignToSuperview(10)
            .activateConstraints()

        textFieldUsername.getAutolayout()
            .below(view: labelUnderImage, 70)
            .alignToSuperview(20)
            .withHeight(60)
            .activateConstraints()

        textFieldPassword.getAutolayout()
            .below(view: textFieldUsername, 20)
            .align(to: textFieldUsername)
            .withHeight(60)
            .activateConstraints()

        buttonLogin.getAutolayout()
            .below(view: textFieldPassword, 100)
            .alignToSuperview(20)
            .withHeight(60)
            .activateConstraints()

        buttonRegister.getAutolayout()
            .below(view: buttonLogin,20)
            .alignToSuperview(20)
            .withHeight(60)
            .activateConstraints()

    }
    
    func setupStyle() {
        self.backgroundColor = .viewBackgroundColor
    }
}

extension LoginView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == self.textFieldUsername){
            textFieldPassword.becomeFirstResponder()
        } else{
            textField.resignFirstResponder()
        }
        return true
    }
}
