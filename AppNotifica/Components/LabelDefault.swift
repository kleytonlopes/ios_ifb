//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 17/11/23.
//

import UIKit

class LabelDefault: UILabel {
    init(text: String) {
        super.init(frame: .zero)
        setup(text: text)
    }
    
    private func setup(text: String){
        self.text = text
        self.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
        self.textAlignment = .center
        self.font = UIFont(name: "SFProDisplay", size: 17)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
