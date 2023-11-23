//
//  AddNotification.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AddNotificationView : UIView {
    
    lazy var viewContainerCamera: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var imageViewCamera: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "camera-icon")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var textFieldTitle = TextFieldDefault(placeholder: "Título", keyboardType: .default, returnType: .next)
    lazy var textFieldDescription = TextFieldDefault(placeholder: "Descricao", keyboardType: .default, returnType: .next)
    lazy var textFieldLocation = TextFieldDefault(placeholder: "Localizacao", keyboardType: .default, returnType: .next)
    lazy var textFieldStatus = TextFieldDefault(placeholder: "Status", keyboardType: .default, returnType: .done)

    lazy var buttonSave = ButtonDefault(title: "Salvar")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AddNotificationView: ViewCode{
    func setupHierarchy() {
        self.addSubview(viewContainerCamera)
        self.viewContainerCamera.addSubview(imageViewCamera)
        self.addSubview(textFieldTitle)
        self.addSubview(textFieldDescription)
        self.addSubview(textFieldLocation)
        self.addSubview(textFieldStatus)
        self.addSubview(buttonSave)

    }
    
    func setupConstraints() {
        viewContainerCamera.getAutolayout()
            .sameTopAnchorAsSuperview(20)
            .alignToSuperview(15)
            .withHeight(200)
            .activateConstraints()
        
        imageViewCamera.getAutolayout()
            .withHeight(60)
            .withWidth(60)
            .sameTrailingAnchor(as: viewContainerCamera, 20)
            .below(view: viewContainerCamera, -65)
            .activateConstraints()
        
        textFieldTitle.getAutolayout()
            .alignToSuperview(15)
            .withHeight(60)
            .below(view: viewContainerCamera, 20)
            .activateConstraints()
        
        textFieldDescription.getAutolayout()
            .align(to: textFieldTitle)
            .withHeight(60)
            .below(view: textFieldTitle, 20)
            .activateConstraints()
        
        textFieldLocation.getAutolayout()
            .align(to: textFieldTitle)
            .withHeight(60)
            .below(view: textFieldDescription, 20)
            .activateConstraints()
        
        textFieldStatus.getAutolayout()
            .align(to: textFieldTitle)
            .withHeight(60)
            .below(view: textFieldLocation, 20)
            .activateConstraints()
        
        buttonSave.getAutolayout()
            .alignToSuperview(15)
            .withHeight(60)
            .below(view: textFieldStatus, 20)
            .activateConstraints()
        
    }
    
    func setupStyle() {
        self.backgroundColor = .viewBackgroundColor
    }
}
