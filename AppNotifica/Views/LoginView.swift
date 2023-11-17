//
//  LoginView.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 12/11/23.
//

import UIKit

class LoginView: UIView {
    
    private lazy var imageViewLogo = ImageViewDefault(imageName: "logo-login")
    private lazy var labelUnderImage = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF")
    private lazy var textFieldUsername = TextFieldDefault(placeholder: "Email")
    private lazy var textFieldPassword = TextFieldDefault(placeholder: "Senha")
    private lazy var buttonLogin = ButtonDefault(title: "LOGAR")
    private lazy var buttonRegister = ButtonDefault(title: "REGISTRAR")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginView: ViewCode{
    func setupHierarchy() {
        self.addSubview(imageViewLogo)
        self.addSubview(labelUnderImage)
        self.addSubview(textFieldUsername)
        self.addSubview(textFieldPassword)
        self.addSubview(buttonLogin)
        self.addSubview(buttonRegister)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            imageViewLogo.topAnchor.constraint(equalTo: self.topAnchor, constant: 180),
            imageViewLogo.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageViewLogo.widthAnchor.constraint(equalToConstant: 274.99),
            imageViewLogo.heightAnchor.constraint(equalToConstant: 82),
            
            labelUnderImage.topAnchor.constraint(equalTo: imageViewLogo.bottomAnchor, constant: 3),
            labelUnderImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            labelUnderImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            textFieldUsername.topAnchor.constraint(equalTo: labelUnderImage.bottomAnchor, constant: 70),
            textFieldUsername.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            textFieldUsername.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            textFieldUsername.heightAnchor.constraint(equalToConstant: 60),
            
            textFieldPassword.topAnchor.constraint(equalTo: textFieldUsername.bottomAnchor, constant: 20),
            textFieldPassword.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            textFieldPassword.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 60),
            
    
            buttonLogin.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 25),
            buttonLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            buttonLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            buttonLogin.heightAnchor.constraint(equalToConstant: 60),
            
            buttonRegister.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 20),
            buttonRegister.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            buttonRegister.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            buttonRegister.heightAnchor.constraint(equalToConstant: 60),
            

        ])
    }
    
    func setupStyle() {
        self.backgroundColor = .viewBackgroundColor
    }
    
    
}
