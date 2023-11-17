//
//  ButtonDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 17/11/23.
//

import UIKit

class ButtonDefault: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        setup(title: title)
    }
    
    private func setup(title: String){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .mainColor
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
