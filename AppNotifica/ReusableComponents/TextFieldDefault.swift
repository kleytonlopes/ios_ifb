//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 17/11/23.
//

import UIKit

class TextFieldDefault: UITextField {
    init(placeholder: String,
         keyboardType: UIKeyboardType = .default,
         returnType: UIReturnKeyType = .default,
         isSecurityEntry: Bool = false) {
        super.init(frame: .zero)
        setup(placeholder, keyboardType, returnType, isSecurityEntry)
    }
    
    private func setup(_ placeholder: String,
                       _ keyboardType: UIKeyboardType,
                       _ returnType: UIReturnKeyType,
                       _ isSecurityEntry: Bool){
        self.backgroundColor = .white
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecurityEntry
        self.keyboardType = keyboardType
        self.returnKeyType = returnType
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .textFieldBackgroundColor
        self.borderStyle = .roundedRect
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
