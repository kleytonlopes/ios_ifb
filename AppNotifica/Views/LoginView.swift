//
//  LoginView.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 12/11/23.
//

import UIKit

class LoginView: UIView {
    
    private lazy var imageViewLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo-login")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var imageLabel: UILabel = {
        let label = UILabel()
        label.text = "Registre e gerencie as ocorrências do seu IF"
        label.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "SFProDisplay", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var textFieldUsername: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " E-mail"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 12
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = " Senha"
        textField.layer.cornerRadius = 12
        textField.translatesAutoresizingMaskIntoConstraints = false

        return textField
    }()
    
    private lazy var buttonLogin: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
        button.setTitle("LOGAR", for: .normal)
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var buttonRegister: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
        button.setTitle("REGISTRAR", for: .normal)
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
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
        self.addSubview(imageLabel)
        self.addSubview(textFieldUsername)
        self.addSubview(textFieldPassword)
        self.addSubview(buttonLogin)
        self.addSubview(buttonRegister)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            imageViewLogo.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageViewLogo.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageViewLogo.widthAnchor.constraint(equalToConstant: 274.99),
            imageViewLogo.heightAnchor.constraint(equalToConstant: 82),
            
            imageLabel.topAnchor.constraint(equalTo: imageViewLogo.bottomAnchor, constant: 3),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            textFieldUsername.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
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
        self.backgroundColor = .white
    }
    
    
}
