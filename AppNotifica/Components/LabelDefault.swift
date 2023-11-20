//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-16 on 17/11/23.
//

import UIKit

class LabelDefault: UILabel {
    init(text: String, fontSize: CGFloat = 17) {
        super.init(frame: .zero)
        setup(text: text, fontSize: fontSize)
    }
    
    private func setup(text: String, fontSize: CGFloat){
        self.text = text
        self.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
        self.textAlignment = .center
        self.font = UIFont.systemFont(ofSize: fontSize)
        self.numberOfLines = 0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
