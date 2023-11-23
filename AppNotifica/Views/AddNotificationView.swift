//
//  AddNotification.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AddNotificationView : UIView {
    
    var onCameraTap:(()-> Void)?
    
    lazy var imageViewContainerCamera: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapCamera))
        view.addGestureRecognizer(tap)
        return view
    }()
    
    lazy var imageViewCameraIcon: UIImageView = {
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
    
    @objc func didTapCamera(){
        self.onCameraTap?()
    }
    
    func setImage(_ image: UIImage){
        self.imageViewCameraIcon.isHidden = true
        self.imageViewContainerCamera.image = image
    }
    
}

extension AddNotificationView: ViewCode{
    func setupHierarchy() {
        self.addSubview(imageViewContainerCamera)
        self.imageViewContainerCamera.addSubview(imageViewCameraIcon)
        self.addSubview(textFieldTitle)
        self.addSubview(textFieldDescription)
        self.addSubview(textFieldLocation)
        self.addSubview(textFieldStatus)
        self.addSubview(buttonSave)

    }
    
    func setupConstraints() {
        imageViewContainerCamera.getAutolayout()
            .sameTopAnchorAsSuperview(20)
            .alignToSuperview(15)
            .withHeight(200)
            .activateConstraints()
        
        imageViewCameraIcon.getAutolayout()
            .withHeight(60)
            .withWidth(60)
            .sameTrailingAnchor(as: imageViewContainerCamera, 20)
            .below(view: imageViewContainerCamera, -65)
            .activateConstraints()
        
        textFieldTitle.getAutolayout()
            .alignToSuperview(15)
            .withHeight(60)
            .below(view: imageViewContainerCamera, 20)
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
