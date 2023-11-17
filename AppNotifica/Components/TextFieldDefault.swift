//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 17/11/23.
//

import UIKit

class TextFieldDefault: UITextField {
    init(placeholder: String) {
        super.init(frame: .zero)
        setup(placeholder: placeholder)
    }
    
    private func setup(placeholder: String){
        self.backgroundColor = .white
        self.placeholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .textFieldBackgroundColor
        self.borderStyle = .roundedRect
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
